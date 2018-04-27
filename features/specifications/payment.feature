# language: pt
@payment
Funcionalidade: Payment

  Cenário: Criar um pagamento por API autenticada
    Quando envio um post para criação de um pagamento
    Então o pagamento deve ser criado com sucesso
