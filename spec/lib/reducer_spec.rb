#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'rspec'

class Reducer
  def self.run
    `cat spec/fixtures/* | ruby lib/mapper.rb test | sort | ruby lib/reducer.rb`
  end
end

describe Reducer do
  it '単語の平均の長さが出力される' do
    expected = "A\t3.5\nB\t3.0\nF\t5.5\nH\t3.0\nM\t6.0\nP\t4.0\nT\t4.25\nW\t6.0\na\t3.6\nb\t4.375\nc\t7.6\nd\t5.5\ne\t4.0\nf\t5.333333333333333\ng\t5.666666666666667\nh\t4.333333333333333\ni\t5.5\nl\t6.5\nm\t5.75\nn\t6.333333333333333\no\t4.0\nr\t4.5\ns\t7.6\nt\t3.75\nw\t5.142857142857143\n"
    Reducer.run.should == expected
  end
end
