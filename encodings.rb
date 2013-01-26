#encoding: utf-8

['a', 'а', "ё", "е"].each do |char|
  puts "========Analyzing letter '#{char}'========"

  def analyze(char, encoding)
    puts "Encoding: #{encoding}"

    puts char.encode(encoding).codepoints.first.inspect
  end

  ["UTF-8", "Windows-1251", "KOI8-R"].each do |a|
    analyze char, a
  end
end