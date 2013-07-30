#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

class Mapper
  def self.map(stdin)
    stdin.each_line {|line|
      words = line.split(" ")
      words.each {|word|
        len = word.length
        if /\A[A-Za-z]/ =~ word
          text = "#{word[0]}\t#{len}"
          puts text unless text.nil?
        end
      }
    }
  end
end

if __FILE__ == $0
  Mapper.map($stdin)
end
