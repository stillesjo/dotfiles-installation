#!/usr/bin/env ruby
#

require 'fileutils'



def backupFile file
  backupFile = file + ".1"
  while File.exists? backupFile
    number = (backupFile.split(/\./).last.to_i) + 1
    backupFile.gsub!(/.\d+/, "." + (number).to_s)
  end
  FileUtils.cp_r file, backupFile
  raise "file not copied" unless File.exists? backupFile
end

def copyFile file, tofile
  FileUtils.rm_rf tofile
  FileUtils.cp_r file, tofile
end

def backup_configuration_files files
  #home = ENV['HOME']
  home = "temp/"
  files.each do |file|
    next if file == __FILE__
    next if file == home
    raise "Cannot find file to copy: #{file}" unless File.exists? file
    
    tofile = home + "/." + file
    if File.exists? tofile
      backupFile tofile
    end
    copyFile file, tofile
  end
end


backup_configuration_files Dir[*]
