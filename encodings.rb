#encoding: utf-8

str = 'ежик'

require 'pry'

def analyze(str, encoding)
  puts "Encoding: #{encoding}"

  puts str.encode(encoding).force_encoding('ASCII-8BIT').codepoints.to_a.inspect
end

["UTF-8", "Windows-1251", "KOI8-R", 'UTF-16'].each do |a|
  analyze str, a
end
