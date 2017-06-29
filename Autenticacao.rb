
#Login Usuário
Given(/^Eu acesso o site "([^"]*)"$/) do |arg1|
    visit arg1
end

Given(/^Eu preencho o campo Usuario$/) do
    fill_in("UserName", with: "74962722000163")
end

Given(/^Eu preencho o campo senha$/) do
    fill_in("Password", with: "123456")
end

Then(/^Eu clico no botão Entrar$/) do
    find(".btn.btn-lg.btn-primary.btn-block").click
end


#Logout
Given(/^Eu clico em cima do login do usuário$/) do
    find(".text-muted.text-xs.block").click
end

Then(/^Eu clico na Opção de Sair$/) do
    find("a",text:"Sair").click
end
