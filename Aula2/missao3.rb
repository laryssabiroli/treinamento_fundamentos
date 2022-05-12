# Conceitos Básicos - missão 3

#Programa que recebe dois números inteiros e no final exibe a soma, subtração, adição 
#e divisão entre eles

print "Digite o primeiro número inteiro: "
number1 = gets.chomp.to_i

print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i

subtraction = number1 - number2
puts "O resultado da subtração entre os dois números é: #{subtraction}"

addition = number1 + number2
puts "O resultado da adição entre os dois números é: #{addition}"

multiplication = number1 * number2
puts "O resultado da multiplição entre os dois números é: #{multiplication}"

division = number1 / number2
puts "O resultado da divisão entre os dois números é: #{division}"




