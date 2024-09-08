Dado('que o usuário está na página institucional do Blog do AGI') do
    visit "http://blogdoagi.com.br" 
    #acessa o site
  end
  
  Dado('que ele clica no campo de busca') do
    find('.ast-search-icon', visible: true).click 
    #clica na lupa de buscar
  end
  
  Quando('o usuário digitar {string} no campo de busca') do |texto|
    find('#search-field', visible: true).send_keys(texto) 
    #digita no campo busca
  end
  
  Quando('pressionar a tecla enter do teclado') do
    find('#search-field', visible: true).send_keys(:enter) 
    #tecla o "enter"
  end
  
  Então('artigos relacionados à palavra pesquisada são exibidos') do
    expect(page).to have_no_content('Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.') 
    #valida se os artigos foram retornandos, conferindo se foi ou não retornado a mensagem "Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras."
  end

  Então('artigos relacionados à palavra pesquisada não são exibidos') do
    expect(page).to have_content('Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras.') 
    #valida se os artigos não foram retornandos, conferindo se foi ou não retornado a mensagem "Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras."
  end
  
  Dado('que eu ajusto o tamanho da janela para {int}x{int}') do |largura, altura|
    page.driver.browser.manage.window.resize_to(largura, altura) 
    #ajusta a resolução da tela afim simular outros dispositivos
  end