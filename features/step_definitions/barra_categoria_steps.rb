
Dado('que eu estou na pagina da cidade {string}') do |cidade|
    @visit.visit_city(cidade)
end
  
Quando('seleciono a categoria') do
    @categoria.categoria_pizza.click
end
  
Então('devo ver os elementos compatíveis') do
    first("[title='Pizza']", :visible => false)
end

Quando('seleciono uma categoria e outra categoria') do 
    @categoria.categoria_pizza.click
    @categoria.categoria_burger.click
end
  
Então('devo ver os elementos da ultima categoria') do                          
    first("[title='Hamburger, Porções']") 
end                                                                            