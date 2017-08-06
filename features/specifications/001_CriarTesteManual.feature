#language: pt
#encoding: utf-8

Funcionalidade: Criacao Teste Manual.
@Teste1
Cenário: Criar Teste Manual
Dado que eu acessar a pagina do SandBox 
Quando preencher os campos de username e password
E clicar em Login
Então logarei no sandbox
E que eu clique no botao 'Create'
E seleciono o projeto 'Sandbox Project'
E seleciono o Issue 'Test'
E preencher os dados do Teste Manual informando 'Sumario'
Quando clicar no botao 'Create'
Então o issue devera ser criado com sucesso 