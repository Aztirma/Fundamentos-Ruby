# Parte 1

def sum(array)
  array.reduce(0, :+)
end


def max_2_sum(array)
  sorted_array = array.sort.reverse
  sum_of_max_2 = sorted_array.take(2).sum
end


def sum_to_n?(array, n)
  array.combination(2).any? { |a, b| a + b == n }
end
 

# Parte 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  # Verifica si la cadena comienza con una consonante (mayúscula o minúscula)
  if s =~ /^[b-df-hj-np-tv-z]/i
    return true
  else
    return false
  end
end


def binary_multiple_of_4?(s)
  # Verifica si la cadena es un número binario válido
  if s.match(/^[01]+$/)
    # Convierte la cadena a un número entero en base 2 y verifica si es múltiplo de 4
    binary_number = s.to_i(2)
    return binary_number % 4 == 0
  else
    return false
  end
end


# Parte 3

class BookInStock
# COMPLETA TU CODIGO
end
