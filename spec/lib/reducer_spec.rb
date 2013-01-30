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
  it '単語の平均の長さが返る' do
    expect = "A\t3.5\nB\t3.25\nF\t4.0\nH\t3.857142857142857\nM\t4.125\nP\t4.111111111111111\nT\t4.153846153846154\nW\t4.285714285714286\na\t4.105263157894737\nb\t4.185185185185185\nc\t4.71875\nd\t4.805555555555555\ne\t4.743589743589744\nf\t4.822222222222222\ng\t4.875\nh\t4.8431372549019605\ni\t4.867924528301887\nl\t4.927272727272728\nm\t4.983050847457627\nn\t5.048387096774194\no\t4.970149253731344\nr\t4.956521739130435\ns\t5.135135135135135\nt\t4.795918367346939\nw\t4.819047619047619\n"
    Reducer.run.should == expect
  end
end
