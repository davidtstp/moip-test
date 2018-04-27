Quando("envio um post para criação de um pagamento") do
  @customer = customer.create_customer
  @customer = JSON.parse(@customer.body)
  @order = order.create_order(@customer['id'])
  @order = JSON.parse(@order.body)

  @payment = payment.create_payment(@order['id'])
end

Então("o pagamento deve ser criado com sucesso") do
  expect(@payment.code).to eq 201
end
