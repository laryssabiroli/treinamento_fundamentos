#Missão 1
# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente.
# Estes dois valores devem ser informados pelo usuário.

def potencia(base, expoente)
    resultado = base ** expoente
    puts "O resultado do calculo da base #{base} elevado ao expoente #{expoente} é: #{resultado}"
end

print 'Digite o número base:'
base = gets.chomp.to_i

print 'Digite seu expoente: '
expoente = gets.chomp.to_i

potencia(base, expoente)


