# frozen_string_literal: true

source 'https://rubygems.org'

gem 'jets'

gem 'dynomite'
gem 'sentimental'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rack'
  gem 'shotgun'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'rspec' # rspec test group only or we get the "irb: warn: can't alias context from irb_context warning" when starting jets console
end
