# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'streamio-ffmpeg'

Gem::Specification.new do |s|
  s.name        = "streamio-ffmpeg"
  s.version     = FFMPEG::VERSION
  s.authors     = ["Rackfish AB"]
  s.email       = ["support@rackfish.com", "bikeath1337.com"]
  s.homepage    = "http://github.com/streamio/streamio-ffmpeg"
  s.summary     = "Wraps ffmpeg to read metadata and transcodes videos."

  s.files        = Dir.glob("lib/**/*") + %w(README.md LICENSE CHANGELOG)
end
