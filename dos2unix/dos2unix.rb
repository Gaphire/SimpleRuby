#!/usr/bin/env ruby
# dos2unix.rb
# Converts line feeds from DOS to Unix format

ARGV.each do |filename|
  contents_file = File.open(filename, 'r')
  contents = contents_file.read
  contents.gsub!(/\r\n?/, "\n")
  replace_file = File.new(filename, 'w+')
  replace_file.puts(contents)
  replace_file.close
end
