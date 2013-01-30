#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'rspec'
require File.dirname(__FILE__) + '/../spec_helper'
require 'sqlite'

describe Storage, 'SQLite3 ストレージラッパークラス' do
  before do
    db_dir = File.join(File.dirname(__FILE__), '..', '..', 'db')
    db = File.join(db_dir, 'sqlite3.db')
    File.delete(db) if File.exist?(db)
  end

  context 'の .put メソッドにおいて' do
    describe 'ハッシュを保存すると' do
      it '新規のキーがハッシュで返る' do
        expect = ""
        hash = Hash.new
        hash.default = 'UNKNOWN'
        hash['A'] = '1'
        hash['B'] = '2'
        hash['C'] = '3'
        hash['D'] = '4'
        result = Storage.new.put(hash)
        result.size.should == 4
        result['A'].should == '1'
        result['B'].should == '2'
        result['C'].should == '3'
        result['D'].should == '4'
        result = Storage.new.get
        result.size.should == 4
        result['A'].should == '1'
        result['B'].should == '2'
        result['C'].should == '3'
        result['D'].should == '4'
      end
    end
  end

  context 'の .put メソッドにおいて' do
    describe 'さらにハッシュを保存すると' do
      it '新規のキーのみハッシュで返る' do
        expect = ""
        hash = Hash.new
        hash.default = 'UNKNOWN'
        hash['A'] = '1'
        hash['B'] = '2'
        hash['C'] = '3'
        hash['D'] = '4'
        Storage.new.put(hash)
        hash['A'] = '1'
        hash['B'] = '2'
        hash['C'] = '3'
        hash['D'] = '4'
        hash['E'] = '5'
        result = Storage.new.put(hash)
        result.size.should == 1
        result['E'].should == '5'
        result = Storage.new.get
        result.size.should == 5
        result['A'].should == '1'
        result['B'].should == '2'
        result['C'].should == '3'
        result['D'].should == '4'
        result['E'].should == '5'
      end
    end
  end

  after do
    db_dir = File.join(File.dirname(__FILE__), '..', '..', 'db')
    db = File.join(db_dir, 'sqlite3.db')
    File.delete(db) if File.exist?(db)
  end
end
