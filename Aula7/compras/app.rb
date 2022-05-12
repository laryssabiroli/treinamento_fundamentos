require_relative 'produto'
require_relative 'mercado'

produto1 = Produto.new
produto1.name = "HQ - Torre de Babel"
produto1.price = 62.99

produto2 = Produto.new
produto2.name = "HQ - Flash"
produto2.price = 130.90

mercado1 = Mercado.new(produto1.name, produto1.price)
mercado1.comprar
mercado2 = Mercado.new(produto2.name, produto2.price)
mercado2.comprar
