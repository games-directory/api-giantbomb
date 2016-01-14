require 'rubygems'
require 'httparty'

require 'giantbomb/version'

module GiantBomb

  # Core
  #
  ['api', 'search', 'resource'].each do |inc|
    require File.join(File.dirname(__FILE__), 'giantbomb', inc)
  end

  # Resources

  a = ['accessory']
  c = ['character', 'chat', 'company', 'concept']
  f = ['franchise']
  g = ['game', 'game_rating', 'genre']
  l = ['location']
  o = ['object']
  p = ['person', 'platform', 'promo']
  r = ['rating_board', 'region', 'release', 'review']
  t = ['theme', 'type']
  u = ['user_review']
  v = ['video', 'video_type']

  resources = [a, c, f, g, l, o, p, r, t, u, v].flatten
  resources.each do |inc|
    require File.join(File.dirname(__FILE__), 'giantbomb/resources', inc)
  end
end
