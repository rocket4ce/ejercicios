# Completar la siguiente función para calcular el n-ésimo número en la sucesión de fibonacci

def fibonacci(n)
  a = 0
  b = 1
  arr = []
  n.times do
      temp = a
      a = b
      b = temp + b
  end
  return a
end

def get_element_array_fibonacci(n)
  n.times do |x|
    puts fibonacci(x)
  end
end

get_element_array_fibonacci(15)