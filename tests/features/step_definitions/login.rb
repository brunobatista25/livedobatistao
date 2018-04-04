Dado("que eu tenho um usuario") do |table|
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  home.load
end

Quando("eu faco login") do
 home.logar_professor('livedobruno@mailinator.com', 'live123')
end

Entao("eu verifico se estou logado") do
  expect(page).to have_current_path('http://k8s.homolog.professor.appprova.com.br/', url: true)
  expect(pagina_professor.nome_professor.text).to eql 'livedobruno'
end