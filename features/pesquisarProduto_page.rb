class PesquisarProdutoPage
    include Capybara::DSL

    def go 
        visit "/"

    end


    def pesquisarPoduto(nomeProduto)
        find('.header__searchbar #search-container input').set nomeProduto
        find('#span-searchIcon').click
       
    end

    def produtoPesquisado 
        find('.box-card .card-name .line-trunc').text
    end
end