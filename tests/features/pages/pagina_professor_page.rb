class PaginaProfessorPage < SitePrism::Page
    element :nome_professor, 'div[class="teacher-identification__name"]'
    element :sair, '#sidebar-signout'

   def deslogar
     sair.click
   end 
end