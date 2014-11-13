require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(*Rails.groups)

module AngularExample
  class Application < Rails::Application
    config.angular_templates.ignore_prefix  = 'angular-app/templates/'
  end
end
