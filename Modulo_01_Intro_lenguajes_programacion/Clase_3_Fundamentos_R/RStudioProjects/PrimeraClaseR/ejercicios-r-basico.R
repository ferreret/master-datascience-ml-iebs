# IEBS

## Ejercicios básicos de R

# -------------------------
# Cuanto es 7 a la cuarta?

7^4

  
# -------------------------
# Es este resultado divisible por 3?

2401 %% 3 == 0

# -------------------------
# Sabiendo que el radio de la Tierra es 6.371Km, imprime el mensaje: 
# "El perímetro de la Tierra es aproximadamente XXXX Km" 
# almacenando el resultado en la variable perimetro, calculando el valor de perimetro usando radio y pi.

pi
planeta <- 'Tierra'
radio <- 6371

perimetro <- pi * (radio)^2
perimetro

# -------------------------
# Calcula el factorial de un numero, sabiendo que el factorial es la multiplicación 
# de ese número por todos los que le preceden

n <- 5
result <- n

while (n > 1) {
   n <- n - 1
   result <- result * n 
}

result

# -------------------------
# Introduce la implementacion anterior de la funcion factorial dentro de una función 
# de modo que podamos llamar a `factorial(5)`



factorial <- function(n) {
  result <- n
  while (n > 1) {
    n <- n - 1
    result <- result * n 
  }
  result
}

factorial(5)

# -------------------------
# Escribir una función que calcule si un numero n es primo, `es_primo(5)` 
# deberia devolver `TRUE` y `es_primo(4)` devolvería `FALSE`

es_primo <- function(n) {
  result <- TRUE
  counter = n - 1
  while (counter > 1) {
      if (n %% counter == 0) {
        result <- FALSE
        break
      }
      counter <- counter - 1
  }
  result
}
  
es_primo(5)

es_primo(4)
