module Service
  include HTTParty

  class Order
    def post(body)
      HTTParty.post("#{CONFIG['url_order']}",
                    :headers => {
                      "Content-Type" => 'application/json',
                      "Authorization" => "#{CONFIG['token']}"
                      },
                    :body => body)
    end

    def create_order(number)
      cpf = ENV['CPF_USER']

      c = CONFIG['order_json'].to_json
      c = JSON.parse(c)
      c['customer']['id'] = "#{number}"
      c['customer']['ownId'] = "#{cpf}"
      c['customer']['email'] = "david.tstp+#{cpf}@gmail.com"
      c['customer']['taxDocument']['number'] = "#{cpf}"
      order_json = JSON.dump(c)

      response = order.post(order_json)
    end
  end
end
