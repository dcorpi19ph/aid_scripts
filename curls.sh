#!bin/bash

#Lista links a verificar

links=(
  "www.google.com"
  "sito.utslp.edu.mx"
  "www.plataforma-utslp.net"
  "www.utslp.edu.mx"
  "www.youtube.com"
  "www.a.com"
  "www.chat.openai.com"
  "www.facebook.com"
)

echo "ok	|	fail"
echo "----------|-----------"


for link in "${links[@]}"; do
  if curl -s --head "$link" | head -n 1 | grep "HTTP/1.[01] 23 .." > /dev/null; then
   echo "$link		|"
  else
   echo "|		$link"
  fi
done
