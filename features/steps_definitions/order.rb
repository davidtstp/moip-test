Quando("envio um post para criação de um pedido") do
  response = customer.create_customer
  response = JSON.parse(response.body)

  @response = order.create_order(response['id'])

  puts @response
end

Então("o pedido deve ter sido criado com sucesso") do
  data = JSON.parse(@response.body)
  @order_json = JSON.parse(CONFIG['order_json'].to_json)

  expect(@response.code).to eq 201
  expect(data['ownId']).to eq(@order_json['ownId'])
  expect(data['status']).to eq('CREATED')
  expect(data['items'][0]['detail']).to eq(@order_json['items'][0]['detail'])
  expect(data['receivers'][0]['moipAccount']['login']).to eq('david.tstp@gmail.com')
end
