<h1 align="center"> Curso Ruby Puro do One Bit Code </h1>

<h2> Pré requisitos </h2>

- Git (somente para clonar o projeto)
- ruby
https://www.ruby-lang.org/pt/documentation/installation/


<h2> Faça o clone do projeto via HTTPS: </h2>
https://github.com/laryssabiroli/treinamento_fundamentos.git


<h2> Para a missão da aula 5 precisaremos da gem cpf_cnpj </h2>

````
gem install cpf_cnpj   
````

<h2> Para execução dos arquivos </h2>
#execute ruby [caminho do arquivo.rb]

#Exemplo para rodar o projeto final
````
ruby projetoFinal\tradutor.rb   
````

<h2> Para a missão final precisará</h2>
- Criar um token https://translate.yandex.com/developers/keys
- Colocar o token no lugar do @token (na class Token)
````
class Token
    def call_private
      getToken
    end
    
    private
    
    def getToken
      @token= '[COLOCAR AQUI O SEU TOKEN]'
      #exemplo @token = 'trnsl.1.1.20220513T220406Z.0125bd61aaa00540.6c516f4907376df7bb3872ca6326f1167f4eae8d'
    end
end
````
E executar o run
````
ruby projetoFinal\tradutor.rb   
````
