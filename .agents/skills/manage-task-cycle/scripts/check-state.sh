#!/bin/sh
set -eu

project_root=${1:-.}
expected_task=${2:-}
expected_status=${3:-}
context_dir="$project_root/.agent-context"
errors=0

fail() {
  printf 'ERROR: %s\n' "$1" >&2
  errors=$((errors + 1))
}

field() {
  file=$1
  key=$2
  awk -v marker="- **${key}:** " 'index($0, marker) == 1 {
    print substr($0, length(marker) + 1)
    exit
  }' "$file"
}

for required in \
  "$context_dir/planning/ACTIVE.md" \
  "$context_dir/planning/TECHNOLOGY.md" \
  "$context_dir/CURRENT.md"
do
  [ -f "$required" ] || fail "missing $required"
done

[ "$errors" -eq 0 ] || exit 1

active="$context_dir/planning/ACTIVE.md"
technology="$context_dir/planning/TECHNOLOGY.md"
current="$context_dir/CURRENT.md"

plan_path=$(field "$active" "Plan" | tr -d '`')
active_milestone=$(field "$active" "Milestone")
active_revision=$(field "$active" "Revision")
active_technology_revision=$(field "$active" "Technology profile revision")

case "$plan_path" in
  .agent-context/*) plan_file="$project_root/$plan_path" ;;
  *) fail "ACTIVE.md has an invalid plan path: ${plan_path:-missing}"; plan_file= ;;
esac

if [ -n "$plan_file" ] && [ -f "$plan_file" ]; then
  plan_id=$(field "$plan_file" "Plan ID")
  plan_revision=$(field "$plan_file" "Revision")
  plan_technology_revision=$(field "$plan_file" "Technology profile revision")
  [ "$plan_id" = "$active_milestone" ] ||
    fail "active milestone $active_milestone does not match plan ID $plan_id"
  [ "$plan_revision" = "$active_revision" ] ||
    fail "ACTIVE.md revision $active_revision does not match plan revision $plan_revision"
  [ "$plan_technology_revision" = "$active_technology_revision" ] ||
    fail "plan technology revision $plan_technology_revision does not match ACTIVE.md revision $active_technology_revision"
else
  fail "active plan file does not exist: ${plan_file:-missing}"
fi

technology_revision=$(field "$technology" "Revision")
[ "$technology_revision" = "$active_technology_revision" ] ||
  fail "technology profile revision $technology_revision does not match ACTIVE.md revision $active_technology_revision"

current_status=$(field "$current" "Status")
current_task=$(field "$current" "Task")
current_plan=$(field "$current" "Plan")
current_plan_path=$(field "$current" "Plan path" | tr -d '`')
current_technology_revision=$(field "$current" "Technology profile revision")

case "$current_status" in
  idle|development|review|manual_review|approved|blocked) ;;
  *) fail "unsupported CURRENT.md status: ${current_status:-missing}" ;;
esac

if [ -n "$expected_task" ] && [ "$current_task" != "$expected_task" ]; then
  fail "CURRENT.md task $current_task does not match expected task $expected_task"
fi

if [ -n "$expected_status" ] && [ "$current_status" != "$expected_status" ]; then
  fail "CURRENT.md status $current_status does not match expected status $expected_status"
fi

if [ "$expected_status" = "manual_review" ] &&
  [ "$current_status" = "manual_review" ]; then
  reviewer_verdict=$(field "$current" "Verdict")
  gate_status=$(field "$current" "Gate status")
  [ "$reviewer_verdict" = "approved" ] ||
    fail "manual review requires reviewer verdict approved, found ${reviewer_verdict:-missing}"
  case "$gate_status" in
    passed*) ;;
    *) fail "manual review requires a passing gate, found ${gate_status:-missing}" ;;
  esac
fi

[ "$current_plan" = "$active_milestone revision $active_revision" ] ||
  fail "CURRENT.md plan identity does not match ACTIVE.md"
[ "$current_plan_path" = "$plan_path" ] ||
  fail "CURRENT.md plan path does not match ACTIVE.md"
[ "$current_technology_revision" = "$active_technology_revision" ] ||
  fail "CURRENT.md technology revision does not match ACTIVE.md"

if [ "$current_status" != "idle" ]; then
  for key in Task "Baseline revision" "Started at" Outcome Scope Risk \
    "Acceptance criteria" "Developer checks" "Reviewer checks" \
    "Required cycle gate" "Manual checks" "Applicable rules" "Technology keys"
  do
    value=$(field "$current" "$key")
    case "$value" in
      ""|"—") fail "active cycle is missing $key" ;;
    esac
  done
fi

if [ "$errors" -gt 0 ]; then
  exit 1
fi

printf 'Task-cycle state is consistent (%s, %s revision %s).\n' \
  "$current_status" "$active_milestone" "$active_revision"
