#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'rspec'

class Mapper
  def self.run
    `cat spec/fixtures/* | ruby lib/mapper.rb test`
  end
end

describe Mapper do
  it '単語ごとの長さが出力される' do
    expect = "F\t4\nf\t7\nc\t9\nw\t2\nd\t6\ni\t9\nT\t4\nt\t7\nb\t8\nr\t4\nm\t5\nn\t5\nd\t4\nB\t3\na\t2\nt\t3\nr\t5\ns\t6\nb\t2\nt\t4\nd\t8\nH\t3\nt\t6\nh\t4\nm\t5\nb\t4\nh\t3\nm\t7\nB\t3\nt\t5\nc\t10\nt\t2\nt\t5\no\t3\nb\t6\ne\t5\nF\t7\nt\t3\nl\t8\nf\t5\nw\t4\ns\t16\nf\t5\nM\t6\na\t1\nf\t6\nw\t5\na\t9\nl\t5\nT\t7\nt\t3\nf\t4\nt\t2\nt\t3\ns\t5\ns\t4\nt\t3\nc\t6\nT\t4\nt\t4\na\t3\nn\t3\nt\t3\nw\t7\nf\t5\no\t8\nA\t3\no\t4\nh\t6\nt\t2\nt\t3\ng\t5\ns\t7\nW\t6\nt\t5\no\t3\nb\t3\nb\t7\nt\t3\nc\t7\nA\t4\nt\t6\nc\t6\nm\t6\nw\t5\ni\t2\nn\t11\nP\t4\nt\t3\nw\t6\no\t2\ne\t4\nt\t4\ng\t7\nb\t3\nT\t2\ne\t3\nt\t3\nw\t7\nd\t4\nb\t2\nt\t3\ng\t5\na\t3\nt\t5\n"
    Mapper.run.should == expect
  end
end
