Dado("que eu esteja logado no ambiente de sandbox da moip com login {string} e senha {string}") do |string, string2|
  @dashboard = DashboardPage.new
  @dashboard.visit(CONFIG['url_sandbox'])
  @dashboard.wait_until_btn_acessar_visible
  @dashboard.executar_login(string ,string2)
end

Dado("tenha criado um cliente, um pedido e um pagamento") do
  @customer = customer.create_customer
  @customer = JSON.parse(@customer.body)

  @order = order.create_order(@customer['id'])
  @order = JSON.parse(@order.body)

  @payment = payment.create_payment(@order['id'])
  @payment = JSON.parse(payment.body)
end

Quando("entrar nos dados do pedido") do
  @dashboard.visit("https://conta-sandbox.moip.com.br/orders/#{@order['id']}")
  @dashboard.wait_until_ordem_id_visible
end

Então("os dados principais do pedido criado devem estar corretos") do
  expect(@dashboard.ordem_id.text).to eq(@order['id'])
  expect(@dashboard.nome_comprador.text).to eq(@customer['fullname'])
  expect(@dashboard.email_comprador.text).to eq(@customer['email'])
end
