# language: pt
@customer
Funcionalidade: Criação de cliente

  Cenário: Criar cliente por API autenticada
    Quando envio um post para criação de um cliente
    Então o cliente deve ter sido criado com sucesso
