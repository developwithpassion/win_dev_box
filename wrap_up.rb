#!/usr/bin/env ruby

require_relative 'init'

unless File.exist?(settings_file)
  FileUtils.cp "settings_template", settings_file
  puts "Change the settings in the file #{settings_file} and rerun the x.bootstrap script"
  exit
end

load settings_file
Expansion::CLIInterface.run("ExpansionFile")

puts 'Bootstrap Complete'
