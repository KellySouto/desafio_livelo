class SelecionaProdutoPage

    include Capybara::DSL


    def selcionarProduto
        find('.box-card .card-name .line-trunc').click

    end

    def verificaNomeProduto
        sleep 5
        find('.product-details__infos-catalog').text

    end    

end