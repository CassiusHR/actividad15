
def create_p(input1, input2)
  file = File.open('index.html','w')
  file.puts "<p>#{input1}</p>"
  file.puts "<p>#{input2}</p>"
  file.close
end
create_p("hola","hola2")

def create_list(str1, str2)
  arr = [str1,str2]
  file = File.open('index.html','a')
  file.puts "</ul>"
  arr.each do |i|
    file.puts "<li>#{i}</li>"
  end
  file.puts "</ul>"
  file.close
end
create_list("hola","hola2")

def p_bgcolor(str1 ,str2 ,color)
  file = File.open('index.html','a')
  file.puts "<p style='background:##{color};'>#{str1}</p>"
  file.puts "<p style='background:##{color};'>#{str2}</p>"
  file.close
end
p_bgcolor("hola1","hola2","red")
