# Missão 2
# Siga a documentação da gem cpf_cnpj para criar um programa
# que recebe como entrada um número de cpf e em um método verifique se este número é válido.

require 'cpf_cnpj'

print 'Digite o CPF: '
cpf = gets.chomp.to_i

def validador_cpf(cpf)
    if CPF.valid?(cpf)
      return "O CPF válido"
    else
      return "O CPF inválido"
    end
end
   
resultado = validador_cpf(cpf)
   
puts resultado
