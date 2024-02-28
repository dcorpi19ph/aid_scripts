#!/bin/bash

# Esta es la función que calcula la serie de Fibonacci hasta un número dado
fibonacci() {
    n=$1           # Guarda el argumento (el número de términos) pasado a la función
    a=0            # Inicializa el primer número de la serie a 0
    b=1            # Inicializa el segundo número de la serie a 1
    echo "Serie de Fibonacci hasta $n términos:"  # Imprime un encabezado para la serie
    for ((i=0; i<n; i++)); do  # Bucle que se ejecuta n veces, donde n es el número de términos
        echo -n "$a "  # Imprime el número actual de la serie sin nueva línea (-n)
        fn=$((a + b))  # Calcula el siguiente número de la serie sumando los dos números anteriores
        a=$b           # Actualiza el primer número de la serie con el segundo número actual
        b=$fn          # Actualiza el segundo número de la serie con el siguiente número calculado
    done
    echo  # Imprime una nueva línea después de imprimir la serie completa
}

# Solicita al usuario que ingrese el número de términos que desea imprimir
read -p "Ingrese el número de términos de la serie de Fibonacci que desea imprimir: " num

# Llama a la función fibonacci con el número ingresado como argumento
fibonacci $num

