class AdicionaCarrinhoPage
    include Capybara::DSL

    def botaoAdCarrrinho
        click_button 'Adicionar ao carrinho'
    end

    def verificarPagina
        find('.cart-list__header .h2').text
    end

    def selecionalVoltagem
        voltagem = find('#CC-prodDetails-sku-type_other_v_voltage')
        voltagem.find('option', text: '220v').select_option
    end

    def verificarProdutocarrinho
        find('.cart-list__prodinfo a').text
    end

     def voltarHome
        find('.header__content__logo').click
     end

     def removerCarrinho
        find('.cart-list__prodquantity .cart-list__remove-item').click
     end


     def adicionarProduto
        find('.cart-list__quantity-box .cart-list__iconqnt--add').click
        sleep 8
    end

    def validarQuantidade 
        qtd=find('.cart-list__value-qnt').text
    end

    def removerProduto
        find('.cart-list__quantity-box .cart-list__iconqnt--remove').click
        sleep 8
    end
    
end    