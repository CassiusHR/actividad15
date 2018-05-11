def word_count
  file = File.open('peliculas.txt','r')
  lines = file.readlines.map(&:chomp)
  file.close
  total = lines.inject(0) do |sum, i|
    sum + i.to_s.split.size
  end

  total
end
puts word_count

def word_count(palabra)
  file = File.open('peliculas.txt','r')
  lines = file.readlines.map(&:chomp)
  file.close
  scan = []
  lines.each do |i|
    scan << i.to_s.scan(palabra)
  end
  scan.count
end
print word_count("Galaxias")
