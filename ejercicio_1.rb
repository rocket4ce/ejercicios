# Completar la siguiente función para que dado un array de números enteros rote sus posiciones a la izquierda.
# Cada elemento pasa a su posición anterior y el primer elemento a la última posición.

# Ejemplo:
# Dado el array: [1,2,3,4,5] rotar 2 posiciones quedaría: [3,4,5,1,2]
class Array
  def rotate_left(rotate)
    arr = self
    size_array = arr.size
    new_arr = (0..size_array-1).to_a
    arr.each_with_index do |elem, index|
      position = index + size_array - rotate
      if position >= size_array
        position = position - size_array        
      end
      new_arr[new_arr.index(position)] = elem
    end
    puts "#{new_arr}"
  end
end
# [0,1,2,3,4]
# [3,4,5,1,2]
[1,2,3,4,5].rotate_left(2)