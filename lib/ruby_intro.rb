# Parte 1

def sum(array)
  array.reduce(0, :+)
end


def max_2_sum(array)

end


def sum_to_n?(array, n)

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
  # Constructor de la clase
  def initialize(isbn, price)
    validate_input(isbn, price)
    set_isbn(isbn)
    set_price(price)
  end

  # Getter y Setter para el número ISBN
  def isbn
    @isbn
  end

  def isbn=(new_isbn)
    set_isbn(new_isbn)
  end

  # Getter y Setter para el precio
  def price
    @price
  end

  def price=(new_price)
    set_price(new_price)
  end

  # Método para formatear el precio como una cadena con signo de dólar y dos decimales
  def price_as_string
    "$%.2f" % @price
  end

  private

  # Verificar si el número ISBN es una cadena no vacía y si el precio es mayor que cero
  def validate_input(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError, "ISBN no puede ser una cadena vacía y el precio debe ser mayor que cero"
    end
  end

  # Asignar valores a los atributos de la instancia
  def set_isbn(new_isbn)
    @isbn = new_isbn
  end

  def set_price(new_price)
    @price = new_price
  end
end

