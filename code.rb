#!/usr/bin/env ruby

require 'yaml'

codes = YAML.safe_load(
  File.read(File.expand_path('../secret.yml', __FILE__))
).freeze

chars = []
ARGV.each do |coordinate|
  chars << codes[coordinate.chars.first.to_s][coordinate.chars.last.to_i]
end
puts chars.join(' ')