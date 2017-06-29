
#Cadastro de Prestador Pessoa Física

Given(/^Eu clico no menu Cadastro$/) do
    find("a",text:"Cadastros").click
end

Given(/^Eu clico no submenu Prestador$/) do
    find("a",text:"Prestador").click
end

Given(/^Eu clico na opção Incluir$/) do
    find("a",text:"Incluir").click
end

Given(/^Eu Preencho os dados para cadastro de pessoa física$/) do
   select("Brasil",from: "PaisIDVerificar")
   select("Pessoa Física",from: "PessoaTipoIDVerificar")
   find("#DocumentoFiscalVerificar").set("")
   fill_in("DocumentoFiscalVerificar", with: Faker::CPF.numeric)
   find("#btn-verificar").click
   fill_in("NomeFantasia", with: Faker::Name)
   select("Masculino",from: "Sexo")
   find("#DataNascimentoValidacao").set("")
   fill_in("DataNascimentoValidacao", with: "25061985")
   fill_in("RegistroNacional", with: "346339728")
   fill_in("INSSCodigo", with: "11111111111")
   fill_in("RNTRC", with: Faker::Number.number(9))
   fill_in("QuantidadeDependentesValidacao", with: "2")
  find("#EnderecoCEP").set("")
   fill_in("EnderecoCEP", with: "05314-000")
   find(".fa.fa-search").click
   fill_in("EnderecoNumero", with: "1132")
   fill_in("Email", with: Faker::Internet.email)
   find("#Fones[0].Prefixo").set("")
   fill_in("Fones[0].Prefixo", with: "11")
   find("#Fones[0].Numero").set("")
   fill_in("#Fones[0].Numero", with: "55667788")
   select("Comercial",from: "Fones[0].FoneTipoID")

end

Given(/^Eu clico no botão Salvar$/) do
    find(".btn.btn-primary.btn-repom.field-verificar").click
end

Given(/^Eu valido a mensagem de sucesso$/) do
    assert_text("Prestador cadastrado com sucesso!")
end

Then(/^Eu volto para a tela de consulta de Prestador$/) do
    find(".btn.btn-default.btn-default",text:"Voltar").click
end

#Cadastro de Prestador Pessoa Jurídica

Given(/^Eu Preencho os dados para cadastro de pessoa jurídica$/) do
    select("Pessoa Jurídica",from: "PessoaTipoIDVerificar")
    find("#DocumentoFiscalVerificar").set("")
    fill_in("DocumentoFiscalVerificar", with: Faker::CNPJ.numeric)
    find("#btn-verificar").click
    fill_in("NomeFantasia", with: Faker::Name)
    fill_in("RazaoSocial", with: Faker::Name)
    fill_in("InscricaoEstadual", with: "111111")
    fill_in("InscricaoMunicipal", with: "111111")
    fill_in("RNTRC", with: Faker::Number.number(9))
    find("#EnderecoCEP").set("")
    fill_in("EnderecoCEP", with: "05314-000")
    find(".fa.fa-search").click
    fill_in("EnderecoNumero", with: "1132")
    fill_in("Email", with: Faker::Internet.email)
    fill_in("Fones[0].Prefixo", with: "11")
    fill_in("Fones[0].Numero", with: "55667788")
    select("Comercial",from: "Fones[0].FoneTipoID")
end
