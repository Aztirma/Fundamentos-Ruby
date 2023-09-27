# Fundamentos-Ruby

Status: Not started

# **Parte 1: Arreglos, hashes y enumerables**

## ****Método 1: `sum(array)`**

Primero, definí el método **`sum(array)`** en el archivo **`lib/ruby_intro.rb`**. Este método toma un arreglo de números enteros como argumento y devuelve la suma de sus elementos. Si el arreglo está vacío, el método debe devolver cero. Aquí está mi código:

```ruby
def sum(array)
array.reduce(0, :+)
end
```

Luego, ejecuté las pruebas asociadas a este método usando el siguiente comando en la terminal:

```ruby
rspec -e '#sum' spec/parte1_spec.rb
```

Obteniendo una salida como la siguiente: 

![Untitled](Fundamentos-Ruby%206e9372ccf9924e68834bde4c3543760d/Untitled.png)

Lo cual significa que las pruebas relacionadas con el método **`sum`** se ejecutaron correctamente y no se detectaron errores.

## ****Método 2: `max_2_sum(array)`**

A continuación, definí el método **`max_2_sum(array)`** en el mismo archivo **`lib/ruby_intro.rb`**. Este método toma un arreglo de números enteros como argumento y devuelve la suma de los dos elementos más grandes. Si el arreglo está vacío, el método debe devolver cero. Aquí está mi código:

```ruby
def max_2_sum(array)
sorted_array = array.sort.reverse
sum_of_max_2 = sorted_array.take(2).sum
end
```

Luego, ejecuté las pruebas asociadas a este método usando el siguiente comando en la terminal: 

```ruby
rspec -e '#max_2_sum' spec/parte1_spec.rb
```

Obteniendo una salida como la siguiente: 

![Untitled](Fundamentos-Ruby%206e9372ccf9924e68834bde4c3543760d/Untitled%201.png)

Lo cual significa que las pruebas relacionadas con el método **`max_2_sum`** se ejecutaron correctamente y no se detectaron errores.

## ****Método 3: `sum_to_n?(array, n)`**

Finalmente, definí el método **`sum_to_n?(array, n)`** en el mismo archivo **`lib/ruby_intro.rb`**. Este método toma un arreglo de números enteros y un número entero adicional **`n`** como argumentos. El método verifica si hay dos elementos en el arreglo cuya suma sea igual a **`n`**. Utilicé el método **`combination`** para generar todas las combinaciones posibles de dos elementos y verifiqué si alguna de ellas sumaba a **`n`**. Aquí está mi código:

```ruby
def sum_to_n?(array, n)
array.combination(2).any? { |a, b| a + b == n }
end
```

Después, ejecuté las pruebas asociadas a este método usando el siguiente comando en la terminal:

```ruby
rspec -e '#sum_to_n' spec/parte1_spec.rb
```

De este modo se obtuvo la siguiente salida:

![Untitled](Fundamentos-Ruby%206e9372ccf9924e68834bde4c3543760d/Untitled%202.png)

Lo cual significa que las pruebas relacionadas con el método**`sum_to_n?(array, n)`** se ejecutaron correctamente y no se detectaron errores.