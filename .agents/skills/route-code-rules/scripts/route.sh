#!/bin/sh
set -eu

if [ "$#" -eq 0 ]; then
  printf 'Usage: %s PATH...\n' "$0" >&2
  exit 2
fi

{
  printf '%s\n' \
    '.agents/rules/principles.md' \
    '.agents/rules/security.md' \
    '.agents/rules/tooling.md' \
    '.agents/rules/validation.md'

  for path in "$@"
  do
    path=${path#./}

    case "$path" in
      *.rb|Gemfile|Gemfile.lock|Rakefile|config/*|app/*|lib/*|spec/*|test/*)
        printf '%s\n' \
          '.agents/rules/ruby-on-rails/testing.md' \
          '.agents/rules/ruby-on-rails/tooling.md'
        ;;
    esac

    case "$path" in
      app/controllers/*|spec/requests/*|spec/controllers/*|config/routes.rb)
        printf '%s\n' '.agents/rules/ruby-on-rails/controllers.md'
        ;;
    esac

    case "$path" in
      app/models/*|spec/models/*|spec/factories/*|test/models/*|test/fixtures/*)
        printf '%s\n' '.agents/rules/ruby-on-rails/models.md'
        ;;
    esac

    case "$path" in
      app/services/*|spec/services/*)
        printf '%s\n' '.agents/rules/ruby-on-rails/services.md'
        ;;
      app/queries/*|spec/queries/*)
        printf '%s\n' '.agents/rules/ruby-on-rails/queries.md'
        ;;
      app/policies/*|spec/policies/*)
        printf '%s\n' '.agents/rules/ruby-on-rails/policies.md'
        ;;
      app/jobs/*|spec/jobs/*)
        printf '%s\n' '.agents/rules/ruby-on-rails/jobs.md'
        ;;
      app/mailers/*|app/views/*mailer*|spec/mailers/*)
        printf '%s\n' '.agents/rules/ruby-on-rails/mailers.md'
        ;;
      db/migrate/*|db/schema.rb|db/structure.sql)
        printf '%s\n' \
          '.agents/rules/ruby-on-rails/migrations.md' \
          '.agents/rules/ruby-on-rails/models.md'
        ;;
    esac

    case "$path" in
      app/views/*|app/components/*|app/helpers/*|app/assets/stylesheets/*|spec/components/*|spec/system/*|spec/features/*|*.html|*.erb|*.css)
        printf '%s\n' \
          '.agents/rules/ruby-on-rails/views.md' \
          '.agents/rules/frontend/README.md'
        ;;
    esac

    case "$path" in
      app/javascript/*|*.js|*.mjs)
        printf '%s\n' \
          '.agents/rules/javascript/README.md' \
          '.agents/rules/javascript/language.md' \
          '.agents/rules/javascript/tooling.md' \
          '.agents/rules/frontend/README.md'
        ;;
    esac

    case "$path" in
      app/javascript/controllers/*|*_controller.js)
        printf '%s\n' '.agents/rules/javascript/stimulus.md'
        ;;
    esac

    case "$path" in
      app/controllers/*|app/models/*|app/policies/*|app/services/*|config/initializers/*|config/routes.rb)
        printf '%s\n' '.agents/rules/ruby-on-rails/security.md'
        ;;
    esac
  done
} | awk 'NF && !seen[$0]++'
