Dado(/^que eu acessar a pagina do SandBox$/) do
	visit "http://sandbox.xpand-addons.com/secure/Dashboard.jspa"
end

Quando(/^preencher os campos de username e password$/) do
    fill_in 'login-form-username', with: 'admin'
    fill_in 'login-form-password', with: 'admin'
end

Quando(/^clicar em Login$/) do
	find(:id, '#login').click
end

Então(/^logarei no sandbox$/) do
end
