# Conceitos Básicos - missão 2

#Programa que recebe o nome e idade de uma pessoa e no final exibe estes dois dados em uma única frase

puts '----------- Olá!-----------'
print 'Digite seu nome: '
nome = gets.chomp
print 'Digite sua idade: '
idade = gets.chomp.to_i

puts "Prazer #{nome} você tem #{idade} anos!"
puts '---------------------------'
