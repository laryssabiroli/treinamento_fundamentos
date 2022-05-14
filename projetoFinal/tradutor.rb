#Projeto Final
#Crie um software que permita que o usuário entre com um texto, o idioma em que o texto está escrito e também o idioma para qual ele deseja traduzir o texto e receba como resposta na tela o texto traduzido.

#Critérios:
#Você deve utilizar orientação a objetos no seu software
#O resultado de cada tradução (junto com a frase original) deve ser guardado em um arquivo que possua no 
#nome a data e horário da tradução (exp: 10-10-18_10:30.txt)
require 'net/http'
require 'uri'
require 'json'

class Token
    def call_private
      getToken
    end
    
    private
    
    def getToken
      @token= 'trnsl.1.1.20220513T220406Z.0125bd61aaa00540.6c516f4907376df7bb3872ca6326f1167f4eae8d'
    end
end

class Tradutor
    puts ""
    puts "--------------------------------------Realize sua tradução--------------------------------------"
    puts "Para realização da tradução escolher a abreviação das linguagens atual e para qual deseja traduzir"
    puts "[Exemplo: pt, en, ru, ...]"
    print "Qual a abreviação da linguagem atual: "
    langFrom = gets.chomp
    print "Digite a frese que quer realizar a tradução: "
    text = gets.chomp
    print "Qual a abreviação da linguagem que quer realizar a tardução: "
    langTo = gets.chomp
    
    readToken = Token.new
    token = readToken.call_private
    iText = text
    iLang = "#{langFrom}-#{langTo}"

    uri = URI('https://translate.yandex.net/api/v1.5/tr.json/translate')
    res = Net::HTTP.post_form(uri, 'key' => token, 'text' => iText, 'lang' => iLang, 'format' => 'plain', 'options' => 1)
    time = Time.now
    current_timestamp = time.strftime('%d-%m-%y_%H-%M') 
    oJson = JSON.parse(res.body)
    newText = oJson["text"]
    responseJson = res.message
    codeJson = res.code

    if(responseJson == 'OK' and codeJson == '200')
        File.open("#{current_timestamp}.txt", 'w') do |line|
            line.puts("--------Resultado da tradução--------")
            line.puts("Frase original: #{iText}")
            line.puts("Frase traduzida: #{newText}")
            line.puts("-------------------------------------")
        end

        puts "Tradução:  #{newText}"
        puts "Um arquivo com o nome #{current_timestamp}.txt foi gerado com o resultado da tradução"
        puts "-----------------------------------------Fim-----------------------------------------"
        puts ""
    elsif(codeJson == '502')
        puts "Abreviação de linguagem inexistente"
        puts "---------------------------------Tente Novamente---------------------------------"
        puts ""
    else
        puts "Algo deu errado! Por favor valide novamente a frase ou a abreviação"
        puts "---------------------------------Tente Novamente---------------------------------"
        puts ""
    end

end







