#Missão 1
#Crie uma expressão regular que faça o casamento de padrão com o número de telefone
# presente no texto a seguir.
#“Olá, tudo bem? Meu whats app é (99) 7 4321-1234”

validacao1 = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
match1 = /\([0-9]{2}\) [0-9] [0-9]{4}-[0-9]{4}/.match(validacao1)
puts match1 

validacao2 = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
match2 = /\(\d{2}\) \d \d{4}-\d{4}/.match(validacao2)
puts match2