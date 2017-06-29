Feature: Autenticacao Repom Frete

Scenario: Login

    Given Eu acesso o site "https://apph01.repom.com.br/Repom.Frete.Web/Account/Login"
    And Eu preencho o campo Usuario
    And Eu preencho o campo senha
    Then Eu clico no botão Entrar

Scenario: Logout

    Given Eu acesso o site "https://apph01.repom.com.br/Repom.Frete.Web/Account/Login"
    And Eu preencho o campo Usuario
    And Eu preencho o campo senha
    And Eu clico no botão Entrar
    And Eu clico em cima do login do usuário
    Then Eu clico na Opção de Sair
