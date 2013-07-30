#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

require 'dalli'

class Storage
  def get
    cache.get('hadoop')
  end

  def put(hash)
    cache.set('hadoop', hash)
  end

  private
  def cache
    Dalli::Client.new '127.0.0.1:11211'
  end
end
