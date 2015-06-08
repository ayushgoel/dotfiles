#!/usr/bin/env ruby

# Copied from https://github.com/mx4492/dotfiles/blob/master/link.rb

USAGE = "usage: `ruby link.rb` from inside a directory containing the `home` directory"

require 'find'
require 'fileutils'
require 'pathname'

include FileUtils::Verbose

home = "home"
home_path = Pathname.new(home)

os_home_path = Pathname.new(Dir.home)

fail USAGE unless home_path.exist?

Find.find(home) do |entry|
  relative_path = Pathname.new(entry).relative_path_from(home_path)
  source = (home_path + relative_path).expand_path
  dest = os_home_path + relative_path
  if File.directory?(entry)
    mkdir_p dest
  else
    ln_sf(source, dest)
  end
end
