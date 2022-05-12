# Missão 2
# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave
# e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves 
#é ** e o seu valor é **”

puts 'Vamos criar uma collection do tipo Hash com três elementos'
hash = {}
print "Digite a chave do primeiro elemento: "
key1 = gets.chomp
print "Digite o valor do primeiro elemento: "
value1 = gets.chomp
print "Digite a chave do segundo elemento: "
key2 = gets.chomp
print "Digite o valor do segundo elemento: "
value2 = gets.chomp
print "Digite a chave do terceiro elemento: "
key3 = gets.chomp
print "Digite o valor do terceiro elemento: "
value3 = gets.chomp

hash[key1] = value1
hash[key2] = value2
hash[key3] = value3

hash.each do |key,value|
    puts "Uma das chaves é #{key} e o seu valor é #{value}"
end

