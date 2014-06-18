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
  context '#run' do
    subject {
      Mapper.run
    }

    let(:expected) {
      "F\t4\n" +
      "f\t7\n" +
      "c\t9\n" +
      "w\t2\n" +
      "d\t6\n" +
      "i\t9\n" +
      "T\t4\n" +
      "t\t7\n" +
      "b\t8\n" +
      "r\t4\n" +
      "m\t5\n" +
      "n\t5\n" +
      "d\t4\n" +
      "B\t3\n" +
      "a\t2\n" +
      "t\t3\n" +
      "r\t5\n" +
      "s\t6\n" +
      "b\t2\n" +
      "t\t4\n" +
      "d\t8\n" +
      "H\t3\n" +
      "t\t6\n" +
      "h\t4\n" +
      "m\t5\n" +
      "b\t4\n" +
      "h\t3\n" +
      "m\t7\n" +
      "B\t3\n" +
      "t\t5\n" +
      "c\t10\n" +
      "t\t2\n" +
      "t\t5\n" +
      "o\t3\n" +
      "b\t6\n" +
      "e\t5\n" +
      "F\t7\n" +
      "t\t3\n" +
      "l\t8\n" +
      "f\t5\n" +
      "w\t4\n" +
      "s\t16\n" +
      "f\t5\n" +
      "M\t6\n" +
      "a\t1\n" +
      "f\t6\n" +
      "w\t5\n" +
      "a\t9\n" +
      "l\t5\n" +
      "T\t7\n" +
      "t\t3\n" +
      "f\t4\n" +
      "t\t2\n" +
      "t\t3\n" +
      "s\t5\n" +
      "s\t4\n" +
      "t\t3\n" +
      "c\t6\n" +
      "T\t4\n" +
      "t\t4\n" +
      "a\t3\n" +
      "n\t3\n" +
      "t\t3\n" +
      "w\t7\n" +
      "f\t5\n" +
      "o\t8\n" +
      "A\t3\n" +
      "o\t4\n" +
      "h\t6\n" +
      "t\t2\n" +
      "t\t3\n" +
      "g\t5\n" +
      "s\t7\n" +
      "W\t6\n" +
      "t\t5\n" +
      "o\t3\n" +
      "b\t3\n" +
      "b\t7\n" +
      "t\t3\n" +
      "c\t7\n" +
      "A\t4\n" +
      "t\t6\n" +
      "c\t6\n" +
      "m\t6\n" +
      "w\t5\n" +
      "i\t2\n" +
      "n\t11\n" +
      "P\t4\n" +
      "t\t3\n" +
      "w\t6\n" +
      "o\t2\n" +
      "e\t4\n" +
      "t\t4\n" +
      "g\t7\n" +
      "b\t3\n" +
      "T\t2\n" +
      "e\t3\n" +
      "t\t3\n" +
      "w\t7\n" +
      "d\t4\n" +
      "b\t2\n" +
      "t\t3\n" +
      "g\t5\n" +
      "a\t3\n" +
      "t\t5\n"
    }

    it '単語ごとの長さが出力される' do
      expect(subject).to eq expected
    end
  end
end

describe Mapper do
  it '単語ごとの長さが出力される' do
    expect = "F\t4\nf\t7\nc\t9\nw\t2\nd\t6\ni\t9\nT\t4\nt\t7\nb\t8\nr\t4\nm\t5\nn\t5\nd\t4\nB\t3\na\t2\nt\t3\nr\t5\ns\t6\nb\t2\nt\t4\nd\t8\nH\t3\nt\t6\nh\t4\nm\t5\nb\t4\nh\t3\nm\t7\nB\t3\nt\t5\nc\t10\nt\t2\nt\t5\no\t3\nb\t6\ne\t5\nF\t7\nt\t3\nl\t8\nf\t5\nw\t4\ns\t16\nf\t5\nM\t6\na\t1\nf\t6\nw\t5\na\t9\nl\t5\nT\t7\nt\t3\nf\t4\nt\t2\nt\t3\ns\t5\ns\t4\nt\t3\nc\t6\nT\t4\nt\t4\na\t3\nn\t3\nt\t3\nw\t7\nf\t5\no\t8\nA\t3\no\t4\nh\t6\nt\t2\nt\t3\ng\t5\ns\t7\nW\t6\nt\t5\no\t3\nb\t3\nb\t7\nt\t3\nc\t7\nA\t4\nt\t6\nc\t6\nm\t6\nw\t5\ni\t2\nn\t11\nP\t4\nt\t3\nw\t6\no\t2\ne\t4\nt\t4\ng\t7\nb\t3\nT\t2\ne\t3\nt\t3\nw\t7\nd\t4\nb\t2\nt\t3\ng\t5\na\t3\nt\t5\n"
    Mapper.run.should == expect
  end
end
