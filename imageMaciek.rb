#!/usr/bin/env ruby

# The resizing is done by calling the command line tools of image magick, 
# because trying to get the ruby gem to work was taking too much time.

require 'rubygems'
require 'csv'

def convert(file_name, width, suffix)
  system "convert " + file_name + ".png" + " -resize " + width.to_s + " converted/" + file_name + suffix + ".png"
end

config_file = File.open('imageConfig', 'r')

types = Hash.new
files = Array.new

state = :null

config_file.each_line do |line|
  line.strip!
  if line[0] == '#' || line.length == 0
  elsif line.start_with?(":types")
    state = :types
  elsif line.start_with?(":files")
    state = :files
  else
    list = line.parse_csv
    if state == :types
       types[list[0].strip] = {:iphone => list[1].to_i, :ipad => list[2].to_i}
    elsif state == :files
       files.push({:file => list[0].strip, :type => list[1].strip})
    else 
      puts "wrong format at line " + line
    end
  end
end

puts files.length.to_s + " file(s) to convert..."
puts

if !(File.directory? "converted")
  Dir.mkdir "converted"
end

files.each do |file|
  filename = file[:file]
  puts filename + "..."
  type_def = types[file[:type]]

  if type_def[:iphone] != 0
    convert(filename, type_def[:iphone], "@2x")
    convert(filename, type_def[:iphone] / 2, "")
  end

  if type_def[:ipad] != 0
    convert(filename, type_def[:ipad], "@2x~ipad")
    convert(filename, type_def[:ipad] / 2, "~ipad")
  end
  
end

puts
puts "Done!"
