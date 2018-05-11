def read_file
  file = File.open('peliculas.txt','r')
  lines = file.readlines.map(&:chomp)
  file.close
  lines.each_with_index do |e, i|
    puts "#{i} - #{e}"
  end
  nil
end
read_file
