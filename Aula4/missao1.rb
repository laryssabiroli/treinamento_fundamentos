# Missão 1
# Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba
# o resultado de cada um deles elevado a segunda potência.

array = []
print "Digite o primeiro número do array: "
number1 = gets.chomp.to_i

print "Digite o segundo número do array: "
number2 = gets.chomp.to_i

print "Digite o terceiro número do array: "
number3 = gets.chomp.to_i

array.push(number1,number2,number3)

array.map! do |a|
    a * 2
end

puts "Esse é o resultado dos números elevados a segunda potência: #{array}"