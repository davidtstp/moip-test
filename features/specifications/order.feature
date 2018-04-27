# language: pt
@order
Funcionalidade: Criação de pedido

  Cenário: Criar pedido por API autenticada
    Quando envio um post para criação de um pedido
    Então o pedido deve ter sido criado com sucesso
