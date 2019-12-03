# Escribir un método que al recibir un arreglo de números, retorne el mayor número posible que se puede formar con esos números. 
# Ejemplo: [223, 2, 34, 4, 9, 98, 905, 503] --> 9, 98, 905, 503, 4, 34, 223, 2.
class Array
  def create_big_number
    arr = self
    new_arr = []
    arr.map{|e| new_arr << {"first_digit" => e.to_s[0].to_i, "count_element" => e.to_s.size, "element" => e } }
    order_first_digit =  new_arr.sort_by { |hash| -hash["first_digit"]} 
    string_number = ""
    order_first_digit.each do |hash_element|
      string_number+=hash_element["element"].to_s
    end
    puts "#{string_number}"
  end  
end

# [223, 2, 34, 4, 9, 98, 905, 503].create_big_number
[25, 3, 999].create_big_number
