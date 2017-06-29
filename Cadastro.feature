Feature: Cadastro

Scenario: Cadastro de Prestador Pessoa Física

    Given Eu acesso o site "https://apph01.repom.com.br/Repom.Frete.Web/Account/Login"
    And Eu preencho o campo Usuario
    And Eu preencho o campo senha
    And Eu clico no botão Entrar
    And Eu clico no menu Cadastro
    And Eu clico no submenu Prestador
    And Eu clico na opção Incluir
    And Eu Preencho os dados para cadastro de pessoa física
    And Eu clico no botão Salvar
    And Eu valido a mensagem de sucesso
    Then Eu volto para a tela de consulta de Prestador

Scenario: Cadastro de Prestador Pessoa Jurídica

    Given Eu acesso o site "https://apph01.repom.com.br/Repom.Frete.Web/Account/Login"
    And Eu preencho o campo Usuario
    And Eu preencho o campo senha
    And Eu clico no botão Entrar
    And Eu clico no menu Cadastro
    And Eu clico no submenu Prestador
    And Eu clico na opção Incluir
    And Eu Preencho os dados para cadastro de pessoa jurídica
    And Eu clico no botão Salvar
    And Eu valido a mensagem de sucesso
    Then Eu volto para a tela de consulta de Prestador
