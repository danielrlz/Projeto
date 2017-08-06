#PAGINA DE LOGIN

Dado(/^que eu acessar a pagina do SandBox$/) do
	visit "http://sandbox.xpand-addons.com/secure/Dashboard.jspa"
end

Quando(/^preencher os campos de username e password$/) do
    fill_in 'login-form-username', with: 'admin'
    fill_in 'login-form-password', with: 'admin'
end

Quando(/^clicar em Login$/) do
	click_button 'Log In'
end

Então(/^logarei no sandbox$/) do
	page.has_content?('System Dashboard')
end

#CRIACAO DE TESTE MANUAL

Dado(/^que eu clique no botao 'Create'$/) do
	find(:id, 'create_link').click
end

Dado(/^seleciono o projeto 'Sandbox Project'$/) do
	find(:id, 'project-field').click
	fill_in 'project-field', with: 'Sandbox Project (SBX)'
	find(:id, 'project-field').click
end

Dado(/^seleciono o Issue 'Test'$/) do
  #Test ja pre selecionado
end

Dado(/^preencher os dados do Teste Manual informando 'Sumario'$/) do
  find(:id, 'summary').click
  fill_in 'summary', with: 'Teste Manual 001'
end

Quando(/^clicar no botao 'Create'$/) do
  find(:id, 'create-issue-submit').click
end

Então(/^o issue devera ser criado com sucesso$/) do
  page.has_content?('System Dashboard')
end

Dado(/^seleciono o projeto 'Calculator'$/) do
  find(:id, 'project-field').click
  fill_in 'project-field', with: 'Calculator (CALC)'
  find(:id, 'project-field').click
end

Dado(/^seleciono o Issue 'Story'$/) do
  find(:id, 'issuetype-field').click
  fill_in 'issuetype-field', with: 'Story'
  find(:id, 'issuetype-field').click
end

Dado(/^preencher os dados do Story informando 'Sumario'$/) do
  find(:id, 'summary').click
  fill_in 'summary', with: 'Story 222'
end

Dado(/^preencher a prioridade$/) do
  find(:id, 'priority-field').click
  fill_in 'priority-field', with: 'Critical'
  find(:id, 'priority-field').click
end

Dado(/^selecionar e buscar pela Story criada$/) do
  visit "http://sandbox.xpand-addons.com/projects/CALC/issues"
  page.has_content?('Calculator')
end

Dado(/^clicar em 'Novo Teste'$/) do
  find(:id, 'test-coverage-raven-create-test').click
  sleep 5

end

Quando(/^ir ao XrayReport$/) do
  sleep 5
  visit "http://sandbox.xpand-addons.com/secure/XrayReport!default.jspa?selectedProjectKey=CALC"
  page.has_content?('Calculator')
end

Então(/^verificar o status da Story$/) do
  page.has_content?('Traceability Report')
end






