#!/bin/sh
set -eu

project_root=${1:-.}

printf '%s\n' 'Candidate validation sources and commands:'

for binstub in rails rake rspec rubocop brakeman bundler-audit
do
  if [ -f "$project_root/bin/$binstub" ]; then
    printf '  bin/%s\n' "$binstub"
  fi
done

if [ -f "$project_root/spec/spec_helper.rb" ] || [ -f "$project_root/spec/rails_helper.rb" ]; then
  if [ ! -f "$project_root/bin/rspec" ]; then
    printf '%s\n' '  bundle exec rspec'
  fi
fi

if [ -f "$project_root/Gemfile" ]; then
  printf '%s\n' '  Gemfile and Gemfile.lock (configured Ruby tools)'
fi

if [ -f "$project_root/package.json" ]; then
  if [ -f "$project_root/pnpm-lock.yaml" ]; then
    package_manager=pnpm
  elif [ -f "$project_root/yarn.lock" ]; then
    package_manager=yarn
  else
    package_manager=npm
  fi
  printf '  %s scripts from package.json\n' "$package_manager"
fi

for source in \
  "$project_root/Procfile" \
  "$project_root/Procfile.dev" \
  "$project_root/Rakefile" \
  "$project_root/.rspec" \
  "$project_root/.rubocop.yml" \
  "$project_root/config/ci.rb" \
  "$project_root/bin/ci"
do
  [ -f "$source" ] && printf '  inspect %s\n' "${source#"$project_root"/}"
done

if [ -d "$project_root/.github/workflows" ]; then
  printf '%s\n' '  inspect .github/workflows/ for authoritative CI commands'
fi

if [ -d "$project_root/spec/system" ]; then
  printf '%s\n' '  system specs are present; keep them separate unless the configured suite includes them'
fi

printf '%s\n' 'Confirm each command from its source before placing it in a task contract.'
