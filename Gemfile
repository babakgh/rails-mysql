source "https://rubygems.org"

ruby "2.3.1"

gem "dotenv-rails", groups: [:development, :test]

gem "rails", "4.2.7.1"

gem "activerecord-session_store", "1.0.0.pre"

gem "pg"
gem "pghero"

# Gems used only for assets and not required
# in production environments by default.
gem "sass"
gem "compass-rails", "> 3.0.0"
gem "sass-rails", "> 5.0.0"
gem "sprockets", "> 3.0.0"
gem "sprockets-rails", "> 3.0.0"
# Remove when we get sourcemaps with Sprockets 4
gem 'sprockets_uglifier_with_source_maps', "2.0.0"

gem "coffee-rails", "~> 4.0"
gem "uglifier", ">= 1.0.3"

gem "i18n-js", "~> 3.0.0.rc14"

gem "paperclip", github: "thoughtbot/paperclip" # switching to master to use aws sdk2
gem "aws-sdk", "2.3.2" # Version locked by lib/sf_file
gem "s3_direct_upload", github: "tim-vandecasteele/s3_direct_upload"

gem "charlock_holmes"

gem "devise", "~> 3.4.0"
gem "devise_openid_authenticatable"
gem "omniauth-azure-oauth2", github: "dantetekanem/omniauth-azure-oauth2"

gem "doorkeeper"
gem "doorkeeper-i18n", github: "doorkeeper-gem/doorkeeper-i18n"

gem "simple_form"

gem "write_xlsx", github: "invoca/write_xlsx"
gem "htmltoword"

gem "cocoon"

gem "rails-i18n"
gem "i18n_yaml_sorter"

# gem "treetop", github: "tim-vandecasteele/treetop", branch: "no_extend"
gem "polyglot"

# gem "audited-activerecord", github: "collectiveidea/audited", branch: "3.0-stable"
gem "audited-activerecord"

gem "rack-timeout", ">= 0.4.2"

gem "sentry-raven", ">= 1.1.0"

gem "slim-rails"
gem "ejs"

gem "docsplit", github: "tim-vandecasteele/docsplit"
gem "ruby-msg"

# gem "prawn", "~> 1.0.0.rc2"
# pending on pull request https://github.com/prawnpdf/prawn/pull/548
# pending multirow headers
gem "prawn", github: "tim-vandecasteele/prawn", branch: "orientation-multirow-better-table-scaling"
gem "prawn-fast-png"
gem "prawn-svg", github: "tim-vandecasteele/prawn-svg"
gem "phantomjs.rb"
gem "css_parser"
gem "nokogiri"
gem "kramdown"

gem "sidekiq"
gem "sinatra", ">= 1.3.0", require: nil

gem "will_paginate"

gem "pundit", "~> 0.3.0"

gem "liquid", github: "tim-vandecasteele/liquid", branch: "master"

gem "newrelic_rpm"
gem "statsd-instrument"
gem "nunes"

gem "activerecord-import"
gem "postgres-copy"
gem "activerecord_any_of"
gem "select2-rails", "~> 3.3.0"
gem "activerecord-delay_touching"

gem "mandrill-rails"

gem "upmark"
gem "htmlentities"

gem "escape_utils"
gem "fast_blank"

# Cache
gem "redis-rails"
# Remove when https://github.com/redis-store/redis-activesupport/pull/61 is merged.
gem "redis-activesupport", github: "andruby/redis-activesupport", branch: "empty-fetch-multi-4.1.6"

gem "timeliness", github: "andruby/timeliness", branch: "multithread"

gem "textacular", "~> 3.0", require: "textacular/rails"

gem "config"

gem "rubyzip", require: "zip/zip"

gem "intercom", "~> 2.4.4"
gem "salesmachine-ruby", "~> 1.0.0"

gem "roo"

gem "sanitize"

gem "grape"
gem "grape-swagger"
gem "grape-swagger-rails"
gem "grape-entity"
gem "api-pagination"
gem "message_bus"

# octopus
gem "savon", "~> 2.3.0"
gem "httpclient"

# exact
gem "oauth2"

# profiling
gem "rack-mini-profiler"
gem "flamegraph"
gem "stackprof"

gem "dav4rack", github: "tim-vandecasteele/dav4rack"
gem "ox"

gem "turbolinks", github: "voxdei/turbolinks-classic", branch: "2-5-stable"
gem "searchkick"
gem "js-routes"
gem "typhoeus"
gem "diffy"

gem "virtus"
gem "redis"

gem "oj"
gem "polo"
gem "whenever", require: false

# Great for showing progressbars on long running rake tasks or scripts
gem "ruby-progressbar", ">= 1.8.1"

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "letter_opener"
  gem "thin"
  gem "spring"
  gem "spring-commands-rspec"
  gem "rubocop"
  gem 'rb-readline'

  # Guard
  gem "guard-rspec", require: false
  gem "terminal-notifier-guard"
end

group :test, :development, :staging do
  gem "pry-rails"
end

group :test, :development do
  gem 'rspec_junit_formatter', '0.2.2'
  gem 'jasmine-junitreporter'
  gem "fontcustom"
  gem "pry-byebug"
  gem "pry-remote"
  gem "quiet_assets"
  gem "factory_girl_rails"
  gem "ruby-prof"
  gem "simplecov"
  gem "powder"
  gem "rspec-rails", "~> 3.4"
  gem "rspec-activemodel-mocks"
  gem "rspec-collection_matchers"
  gem "parallel_tests"
  gem "jasmine-rails"
  gem "i18n-tasks"
  gem "memory_profiler"
  gem "brakeman", require: false
end

group :test do
  gem "poltergeist", "~> 1.10.0"
  gem "database_cleaner"
  gem "vcr"
  gem "webmock"
  gem "capybara", "~> 2.7.0"
  gem "launchy"
  gem "fakeweb", require: false # to fake S3
  gem "pdf-inspector", require: "pdf/inspector" # To test prawn
  gem "pdf-reader"
  gem "capybara-email"
  gem "test_after_commit" # Can be removed when upgraded to Rails 5
  gem "shoulda-matchers", "~> 3.1"
  gem "shoulda-kept-respond-with-content-type"
  gem "db-query-matchers"
end

group :bench, :test do
  gem "benchmark-ips"
end

group :bench do
  gem "thor"
end
# To use ActiveModel has_secure_password
# gem "bcrypt-ruby", "~> 3.0.0"

# To use Jbuilder templates for JSON
# gem "jbuilder"

# Use unicorn as the app server
gem "unicorn"
gem "unicorn-worker-killer"

# To use debugger
# gem "debugger"
gem "wannabe_bool"

gem 'react-rails', '~> 1.6.0'
