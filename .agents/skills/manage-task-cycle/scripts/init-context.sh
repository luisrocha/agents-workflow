#!/bin/sh
set -eu

project_root=${1:-.}
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
framework_dir=$(CDPATH= cd -- "$script_dir/../../.." && pwd)
template_dir="$framework_dir/templates/context"
context_dir="$project_root/.agent-context"

if [ ! -d "$template_dir" ]; then
  printf 'ERROR: context templates are missing: %s\n' "$template_dir" >&2
  exit 1
fi

if [ -e "$context_dir" ]; then
  printf 'ERROR: refusing to overwrite existing context: %s\n' "$context_dir" >&2
  exit 1
fi

mkdir "$context_dir"
cp -R "$template_dir/." "$context_dir/"

printf 'Created project agent context at %s.\n' "$context_dir"
