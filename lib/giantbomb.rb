require 'rubygems'
require 'httparty'

require 'giantbomb/version'

module GiantBomb

  ['api', 'search', 'resource'].each do |inc|
    require File.join(File.dirname(__FILE__), 'giantbomb', inc)
  end

  c = ['character', 'company', 'concept']
  f = ['franchise']
  g = ['game']
  l = ['location']
  o = ['object']
  p = ['person', 'platform']
  r = ['review']
  u = ['user_review']
  v = ['video']

  [c, f, g, l, o, p, r, u, v].flatten.each do |inc|
    require File.join(File.dirname(__FILE__), 'giantbomb', inc)
  end
end
