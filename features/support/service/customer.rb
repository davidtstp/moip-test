module Service
  include HTTParty

  class Customer
    def post(body)
      HTTParty.post("#{CONFIG['url_customer']}",
                    :headers => {
                      "Content-Type" => 'application/json',
                      "Authorization" => "#{CONFIG['token']}"
                      },
                    :body => body)
    end

    def create_customer
      cpf = ENV['CPF_USER']

      c = CONFIG['customer'].to_json
      c = JSON.parse(c)
      c['ownId'] = "#{cpf}"
      c['email'] = "david.tstp+#{cpf}@gmail.com"
      c['taxDocument']['number'] = "#{cpf}"
      customer_json = JSON.dump(c)

      response = customer.post(customer_json)
    end
  end
end
