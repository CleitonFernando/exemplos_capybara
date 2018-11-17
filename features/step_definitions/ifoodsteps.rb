Given("Eu acesso o ifood") do
  visit "http://www.ifood.com.br"
end

When("Eu busco pelo cep {string}") do |cep|
   #Localizando e elemento e inserindo o cep
   fill_in "cep",with:cep

   #Localizando o botao atraves do xpath  e clicando no  botao 
   botao = page.find(:xpath,"//*[@id='buscaCep']/input[17]")
   botao.click
end

When("Eu digito o numero  residêncial {string}") do |numero|
  #Localizando o input  e  inserindo o numero 
  find(:css, '.field5.streetNumber').set(numero)
  page.find(:xpath,"//*[@id='box4']/form/div[3]/input[1]").click
end

Then("Eu seleciono o primeiro restaurantes da lista.") do
  page.all(:css, ".restaurant-card-link")[0].click
  #expect().to have_content 
end


