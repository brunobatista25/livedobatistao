
World(Helper)

After '@deslogar_professor' do 
  pagina_professor.deslogar
end 


# depois de cada cenario ele tira um print e remove todos os espacos virgulas
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  scenario_name = scenario_name.delete(',', '')
  scenario_name = scenario_name.delete('(', '')
  scenario_name = scenario_name.delete(')', '')
  scenario_name = scenario_name.delete('#', '')

  # se o cenario falha ele vai chamar o metodo take passando
  # dois parametros o nome do cenario com nome minusculo e o resultado
  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end