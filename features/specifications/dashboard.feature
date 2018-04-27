# language: pt
@smoke_moip
Funcionalidade: Validação de pedido criado no Dashboard do Sandbox

  Contexto: Usuário logado no ambiente de sandbox do moip
    Dado que eu esteja logado no ambiente de sandbox da moip com login "david.tstp@gmail.com" e senha "W0lv3r!n3"
    E tenha criado um cliente, um pedido e um pagamento

  Cenário: Primeiro Cenário
    Quando entrar nos dados do pedido
    Então os dados principais do pedido criado devem estar corretos
