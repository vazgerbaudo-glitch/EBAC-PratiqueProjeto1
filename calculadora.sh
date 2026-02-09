#!/bin/bash

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Escolha a operação:"
echo "1-Soma"
echo "2-Subtração"
echo "3-Multiplicação"
echo "4-Divisão"
read opcao

if [ "$opcao" -eq 1 ]; then
   resultado=$((num1 + num2))
   echo "Resultado da soma: $resultado"

elif [ "$opcao" -eq 2]; then
   resultado=$((num1 - num2))
   echo "Resultado da subtração: $resultado"

elif [ "$opcao" -eq 3]; then
   resultado=$((num1 * num2))
   echo "Resultado da multiplicação: $resultado"

elif [ "$opcao" -eq 4 ]; then
   if [ "num2" -ne 0 ]; then
     resultado=$((num1 / num2))
     echo "Resultado da divisão: $resultado"
   else
     echo "Erro: divisão por zero"
 fi
else
  echo "Opção inválida"

fi
