#Desenvolvido por Diego Soares da Silva 
#Sob licença GPL v3
#!/bin/bash
#Script para rodar atualização automática da lista de pacotes 

  printf 'Rodando script...\n'
  sudo apt-get update && sudo apt-get upgrade -y

  if [ $? -eq 0 ]; then
      printf '#####Script realizado com sucesso...\n'
  else
      printf '######Erro durante a execução do script...\n'
  fi
# Se o retorno for igual a 0, o script rodou, senão, apresentou erro
#Log
  log_atu="/var/log/atu.log"
 echo "$(date): Atualização automática" >> "$log_atu"
