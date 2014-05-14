#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

class Reducer
  def self.reduce(stdin)
    key = ""
    wordcount = 0.0
    lettercount = 0

    stdin.each_line {|line|
      newkey, wordlen = line.strip.split
      if newkey.length > 0
        unless key == newkey
          count = lettercount / wordcount
          puts "#{key}\t#{count}\n" unless count.nan?
          key = newkey
          wordcount = 0.0
          lettercount = 0
        end
        wordcount += 1.0
        lettercount += wordlen.to_i
      end
    }
    unless key.nil?
      count = lettercount / wordcount
      puts "#{key}\t#{count}\n" unless count.nan?
    end
  end
end

if __FILE__ == $0
  # require ARGV.shift || 'cached'
  Reducer.reduce($stdin)
end
