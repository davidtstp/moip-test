Quando(/^envio um post para criação de um cliente$/) do
  @response = customer.create_customer
end

Então(/^o cliente deve ter sido criado com sucesso$/) do
  data = JSON.parse(@response.body)
  body = JSON.parse(CONFIG['customer'].to_json)
  credit = body['fundingInstrument']['creditCard']['number']

  expect(@response.code).to eq 201
  expect(data['ownId']).to eq(ENV['CPF_USER'])
  expect(data['email']).to eq("david.tstp+#{ENV['CPF_USER']}@gmail.com")
  expect(data['phone']['number']).to eq(body['phone']['number'])
  expect(data['shippingAddress']['zipCode']).to eq(body['shippingAddress']['zipCode'])
  expect(data['fundingInstrument']['creditCard']['first6']).to include(credit[0, credit.length - 10])
end
