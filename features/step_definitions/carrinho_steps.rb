Quando('pesquiso pelo produto {string}') do |nomeProduto|
  @pesquisarProdutoPage.go
  @pesquisarProdutoPage.pesquisarPoduto(nomeProduto)
  
end

Então('o sistema deve retorna pesquisa') do 
    expect(@pesquisarProdutoPage.produtoPesquisado).to eql "Cafeteira Elétrica Mondial Pratic NC-25 17 Xícaras – Preta"
end
  
Quando('seleciono o produto') do
   @selecionaProdutoPage.selcionarProduto
    expect(@selecionaProdutoPage.verificaNomeProduto).to have_content "Cafeteira Elétrica Mondial Pratic NC-25 17 Xícaras – Preta"
    

end

Quando('informo a voltagem') do
  @adicionaCarrinhoPage.selecionalVoltagem
end
  
Quando('adiciono no carrinho') do
   @adicionaCarrinhoPage.botaoAdCarrrinho
   expect(@adicionaCarrinhoPage.verificarPagina).to eql "Seu carrinho"
  
end
  
Então('o sistema apresenta o produto no carrinho') do
 
  expect(@adicionaCarrinhoPage.verificarProdutocarrinho).to eql "Cafeteira Elétrica Mondial Pratic NC-25 Preta - 17 Xícaras - 220 V -"
  #@adicionaCarrinhoPage.voltarHome
end

Então('remover o produto') do
  @adicionaCarrinhoPage.removerCarrinho
end

Então('adiciono mais produto um ao carrinho') do  
  @adicionaCarrinhoPage.adicionarProduto
  expect(@adicionaCarrinhoPage.validarQuantidade).to eql '2'
end

Então('diminui um produto do carrinho') do
  @adicionaCarrinhoPage.removerProduto
  expect(@adicionaCarrinhoPage.validarQuantidade).to eql '1'
end



  

  