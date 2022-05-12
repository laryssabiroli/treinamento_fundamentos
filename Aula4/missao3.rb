# Missão 3
# Dado o seguinte hash:
# Numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do
# elemento resultante.

Numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

numero_maior = 0
valor_maior = []

Numbers.each do |key, value|
    if value > numero_maior
        numero_maior = value
        valor_maior = [key, value]
    end
end

puts "O maior número é o da chave #{valor_maior[0]} com valor #{valor_maior[1]}"