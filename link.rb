#!/usr/bin/env ruby

# Copied from https://github.com/mx4492/dotfiles/blob/master/link.rb

USAGE = "usage: `ruby link.rb` from inside a directory containing the `home` directory"

require 'find'
require 'fileutils'
require 'pathname'

include FileUtils::Verbose

source_root = Pathname.new('home')
home = Pathname.new(Dir.home)

fail USAGE unless source_root.exist?

Find.find(source_root) do |entry|
  relative_path = Pathname.new(entry).relative_path_from(source_root)
  source = (source_root + relative_path).expand_path
  dest = home + relative_path
  if File.directory?(entry)
    mkdir_p dest
  else
    ln_sf(source, dest)
  end
end
