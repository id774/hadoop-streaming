#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'rspec'
require File.dirname(__FILE__) + '/../spec_helper'
require 'cached'


describe Storage, 'memcached ストレージラッパークラス' do
  context 'の .put 及び .get メソッドにおいて' do
    describe '保存したレコードを参照すると' do
      it '保存されているレコードがハッシュで返る' do
        expect = ""
        hash = Hash.new
        hash.default = 'UNKNOWN'
        hash['A'] = '1'
        hash['B'] = '2'
        hash['C'] = '3'
        hash['D'] = '4'
        Storage.new.put(hash)
        result = Storage.new.get
        result.size.should == 4
        result['A'].should == '1'
        result['B'].should == '2'
        result['C'].should == '3'
        result['D'].should == '4'
      end
    end
  end
end
