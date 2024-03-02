#!/bin/bash

# Lista de URLs a verificar
urls=(
    "sito.utslp.edu.mx"
    "www.google.com"
    "www.plataforma-utslp.net"
    "www.utslp.edu.mx"
    "www.youtube.com"
    "www.facebook.com"
    "www.a.com.mx"
    "www.utleon.edu.mx"
    "www.itslp.edu.mx"
    "www.nmnbcv.com"
)

# Función para imprimir en verde
print_ok() {
    echo -e "\e[32mOK\e[0m"
}

# Función para imprimir en rojo
print_fail() {
    echo -e "\e[31mFail\e[0m"
}

echo "Página Web               | OK  | Fail"
echo "-------------------------+-----+-----"

# Recorre la lista de URLs y realiza solicitudes CURL
for url in "${urls[@]}"; do
    if curl -s --head "$url" | head -n 1 | grep "HTTP/1.[01] [23].." > /dev/null; then
        echo -n "$url | $(print_ok)  |"
    else
        echo -n "$url |      | $(print_fail)"
    fi
    echo ""
done
