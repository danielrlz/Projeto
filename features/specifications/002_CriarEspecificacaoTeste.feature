#language: pt
#encoding: utf-8
@Teste2
Funcionalidade: Criacao Especificacao com Teste.

Cenário: Criar Especificacao e Teste
Dado que eu acessar a pagina do SandBox 
Quando preencher os campos de username e password
E clicar em Login
Então logarei no sandbox
E que eu clique no botao 'Create'
E seleciono o projeto 'Calculator'
E seleciono o Issue 'Story'
E preencher os dados do Story informando 'Sumario'
E preencher a prioridade
Quando clicar no botao 'Create'
Então selecionar e buscar pela Story criada
E clicar em 'Novo Teste'
E preencher os dados do Teste Manual informando 'Sumario'
E clicar no botao 'Create'
E ir ao XrayReport
E verificar o status da Story


