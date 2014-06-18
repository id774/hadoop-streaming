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
  context '#run' do
    subject {
      Reducer.run
    }

    let(:expected) {
      "A\t3.5\n" +
      "B\t3.0\n" +
      "F\t5.5\n" +
      "H\t3.0\n" +
      "M\t6.0\n" +
      "P\t4.0\n" +
      "T\t4.25\n" +
      "W\t6.0\n" +
      "a\t3.6\n" +
      "b\t4.375\n" +
      "c\t7.6\n" +
      "d\t5.5\n" +
      "e\t4.0\n" +
      "f\t5.333333333333333\n" +
      "g\t5.666666666666667\n" +
      "h\t4.333333333333333\n" +
      "i\t5.5\n" +
      "l\t6.5\n" +
      "m\t5.75\n" +
      "n\t6.333333333333333\n" +
      "o\t4.0\n" +
      "r\t4.5\n" +
      "s\t7.6\n" +
      "t\t3.75\n" +
      "w\t5.142857142857143\n"
    }

    it '単語の平均の長さが出力される' do
      expect(subject).to eq expected
    end
  end
end
