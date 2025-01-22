require 'simplecov'
SimpleCov.start

require 'bundler'
Bundler.require

require 'fileutils'
require 'webmock/rspec'
WebMock.allow_net_connect!

require 'steramio-ffmpeg'
FFMPEG.logger = Logger.new(nil)

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end

def fixture_path
  @fixture_path ||= File.join(File.dirname(__FILE__), 'fixtures')
end

def tmp_path
  @tmp_path ||= File.join(File.dirname(__FILE__), "..", "tmp")
end

FileUtils.rm_rf(tmp_path)
FileUtils.mkdir_p tmp_path
