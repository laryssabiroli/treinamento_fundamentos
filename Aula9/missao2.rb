# Missão 2
# Em uma classe chamada Carro, crie um método público chamado get_km que recebe como parâmetro 
#a seguinte informação “Um fusca de cor amarela viaja a 80km/h ”.
# O método get_km deve chamar um método privado com o nome de find_km. Este deve localizar 
#e retornar o casamento de padrão 80km/h.
# No final, imprima este retorno.

class Car
    def get_km(text)
        km = find_km(text)
        puts km
    end

    private

    def find_km(text)
        /[0-9]{2,}km\/h/.match(text)
    end
end
 
text = "Um fusca de cor amarela viaja a 80km/h"
 
car = Car.new
car.get_km(text)