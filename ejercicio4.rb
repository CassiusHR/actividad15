$items = Array.new


def main_menu
  puts "Seleccione una opcion:"
  puts "1- Productos existentes"
  puts "2- Stock total por producto"
  puts "3- Productos no registrados"
  puts "4- Productos con un stock menor a X"
  puts "5- Registrar nuevo producto en bodegas"
  puts "6- Salir"
end
def sub_menu
  puts "Especifique una opcion:"
  puts "a- Mostrar la existencia por productos"
  puts "b- Mostrar la existencia total por tienda"
  puts "c- Mostrar la existencia total en todas las tiendas"
  puts "d- Volver al menu principal"
end

def parse(name, loc1, loc2, loc3)
  products = Hash.new
  products[name.to_sym] = [loc1, loc2, loc3]
  products
end
def getfile_data
  file = File.open("productos.txt", "r")
  products = file.readlines.map(&:chomp)
  file.close
  data = Array.new
  products.map do |i|
    data << parse(*i.split(", "))
  end
  data
end
$items = getfile_data

def stock_per_product
  puts "Stock total por producto:"
  $items.each do |i|
    keys = i.keys
    values = i.values.flatten
    num = 0
    values.each{|v| num += v.to_i}
    stock = "#{keys[0]}: #{p_num} "
    puts stock
  end
  nil
end
def stock_per_location
  loc1_val = 0
  loc2_val = 0
  loc3_val = 0
  $items.each do |i|
    keys = i.keys
    values = i.values.flatten
    loc1_val += values[0].to_i
    loc2_val += values[1].to_i
    loc3_val += values[2].to_i
  end
  puts ""
  puts "Stock por tienda"
  puts ""
  puts "Tienda1: #{loc1_val}"
  puts "Tienda2: #{loc2_val}"
  puts "Tienda3: #{loc3_val}"
end
def total_stock
  loc1_val = 0
  loc2_val = 0
  loc3_val = 0
  $items.each do |i|
    keys = i.keys
    values = i.values.flatten
    loc1_val += values[0].to_i
    loc2_val += values[1].to_i
    loc3_val += values[2].to_i
  end
  puts ""
  puts "Stock total de productos: #{loc1_val+loc2_val+loc3_val}"
  puts ""
end
