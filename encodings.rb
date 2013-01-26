#encoding: utf-8

ARGV.each do |str|

  def analyze(str, encoding)
    puts "Encoding: #{encoding}"

    puts str.encode(encoding).force_encoding('ASCII-8BIT').codepoints.to_a.inspect
  end

  ["UTF-8", "Windows-1251", "KOI8-R"].each do |a|
    analyze str.dup.force_encoding('UTF-8'), a
  end
end