#language:pt

Funcionalidade: Incluir Produto para carrinho
Essa funcionalidade permite que um usuario não cadastrado
na base de dados, pesquise e inclua um produdo carrinho. 

@incluir
Cenário: Incluir produto Bivolte
Quando pesquiso pelo produto "Cafeteira Elétrica Mondial Pratic NC-25 17 Xícaras – Preta"
Então o sistema deve retorna pesquisa
Quando seleciono o produto
E informo a voltagem
E adiciono no carrinho
Então o sistema apresenta o produto no carrinho

@remover
Cenário: Remover produto do carrinho
Quando pesquiso pelo produto "Cafeteira Elétrica Mondial Pratic NC-25 17 Xícaras – Preta"
Então o sistema deve retorna pesquisa
Quando seleciono o produto
E informo a voltagem
E adiciono no carrinho
Então o sistema apresenta o produto no carrinho
E remover o produto

@incluirProdutoBotao
Cenário: Adicionar pelo botão
Quando pesquiso pelo produto "Cafeteira Elétrica Mondial Pratic NC-25 17 Xícaras – Preta"
Então o sistema deve retorna pesquisa
Quando seleciono o produto
E informo a voltagem
E adiciono no carrinho
Então o sistema apresenta o produto no carrinho
E adiciono mais produto um ao carrinho

@removerProdutoBotao
Cenário: Remover pelo botão
Quando pesquiso pelo produto "Cafeteira Elétrica Mondial Pratic NC-25 17 Xícaras – Preta"
Então o sistema deve retorna pesquisa
Quando  seleciono o produto
E informo a voltagem
E adiciono no carrinho
Então o sistema apresenta o produto no carrinho
E adiciono mais produto um ao carrinho
E diminui um produto do carrinho