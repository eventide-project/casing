ENV['CONSOLE_DEVICE'] ||= 'stdout'
ENV['LOG_COLOR'] ||= 'on'
ENV['LOG_LEVEL'] ||= 'trace'
ENV['LOG_METADATA'] ||= 'off'

puts RUBY_DESCRIPTION

require_relative '../init.rb'

require 'pp'
require 'runner'
require 'casing/controls'

Telemetry::Logger::AdHoc.activate
