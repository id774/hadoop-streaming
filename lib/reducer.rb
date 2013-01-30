#!/opt/ruby/1.9.3/bin/ruby

$:.unshift File.join(File.dirname(__FILE__))

class Reducer
  def self.reduce
    wordcount = 0.0
    lettercount = 0
    key = ""

    $stdin.each_line {|line|
      newkey, wordlen = line.strip.split
      if newkey.length > 0
        unless key == newkey
          puts "#{key}\t#{lettercount / wordcount}\n"
          key = newkey
        end
        wordcount = wordcount + 1.0
        lettercount = lettercount + wordlen.to_i
      end
    }
    unless key.nil?
      puts "#{key}\t#{lettercount / wordcount}\n"
    end
  end
end

if __FILE__ == $0
  require ARGV.shift || 'cached'
  Reducer.reduce
end
