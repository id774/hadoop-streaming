#!/opt/ruby/1.9.3/bin/ruby

$:.unshift File.join(File.dirname(__FILE__))

class Mapper
  def self.map
    $stdin.each_line {|line|
      words = line.split(" ")
      words.each {|word|
        len = word.length
        if /[A-Za-z]/ =~ word
          text = "#{word[0]}\t#{len}"
          puts text unless text.nil?
        end
      }
    }
  end
end

if __FILE__ == $0
  Mapper.map
end
