# language: pt

Funcionalidade: Fazer login

-Eu com professor.
-Eu quero fazer login na plataforma.

@deslogar_professor
Cenario: Fazer login com sucesso.
Dado que eu tenho um usuario
|email|livedobruno@mailinator.com|
|senha|  live123                 |
Quando eu faco login
Entao eu verifico se estou logado