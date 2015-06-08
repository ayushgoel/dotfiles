#!/usr/bin/env ruby

# Install brew and gems as listed in `brew` and `gems` folder.

require 'rake'

def installFrom(filePath)
    File.foreach(filePath) { |line|
        name = line.chomp
        yield name
    }
end

brewListPath = "brew" + File::SEPARATOR + "brew-list"
installFrom(brewListPath) {|i| sh "brew install #{i}"}

brewCaskListPath = "brew" + File::SEPARATOR + "brew-cask-list"
installFrom(brewCaskListPath) {|i| sh "brew cask install #{i}"}

gemListPath = "gems" + File::SEPARATOR + "gem-list"
installFrom(gemListPath) {|i| sh "gem install #{i}"}
