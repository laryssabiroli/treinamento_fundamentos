#Estruturas de Controle - Missão especial
#Calculadora 

result = ''
loop do
    if result != ''
        puts "----------------------resultado----------------------"
        puts result
    end
  puts "---------------------calculadora---------------------"
  puts 'Selecione uma das seguintes opções'
  puts '1- Realizar cálculo'
  puts '0- Sair'
  print 'Opção: '

  option = gets.chomp.to_i

  if option == 1
    print 'Digite o primeiro número: '
    number1 = gets.chomp.to_f
    print 'Digite o segundo número: '
    number2 = gets.chomp.to_f
    puts 'Seleciona a operação desejada'
    puts '1- Multiplicar'
    puts '2- Dividir'
    puts '3- Adicionar'
    puts '4- Substrair'
    operation = gets.chomp.to_i
    case operation
    when 1
        calculation = number1 * number2
        result = "O resultado da multiplicação entre os dois números é #{calculation}"
    when 2
        calculation = number1 / number2
        result = "O resultado da divisão entre os dois números é #{calculation}"
    when 3
        calculation = number1 + number2
        result = "O resultado da adição entre os dois números é #{calculation}"
    when 4
        calculation = number1 - number2
        result = "O resultado da subtração entre os dois números é #{calculation}"
    else
        puts 'Opção inválida'
    end
  elsif option == 0
    break if option == 0
  else
    result = 'Opção inválida'
  end
  s
  system "clear"
end