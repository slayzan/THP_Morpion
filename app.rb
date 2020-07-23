require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'Show'
require 'Player'
require 'Game'
require 'BoardCase'
require 'Board'

Application.new.perform


