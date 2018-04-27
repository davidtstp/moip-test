module Service
  include HTTParty

  class Payment
    def post(body, id)
      HTTParty.post("#{CONFIG['url_order']}/#{id}/payments",
                    :headers => {
                      "Content-Type" => 'application/json',
                      "Authorization" => "#{CONFIG['token']}"
                      },
                    :body => body)
    end

    def create_payment(id)

        payment_json = {
         "statementDescriptor":"Minha Loja",
         "fundingInstrument":{
            "method":"BOLETO",
            "boleto":{
               "expirationDate":"2020-06-20",
               "instructionLines":{
                  "first":"Atenção,",
                  "second":"fique atento à data de vencimento do boleto.",
                  "third":"Pague em qualquer casa lotérica."
               },
               "logoUri":"http://www.lojaexemplo.com.br/logo.jpg"
            }
         }
      }.to_json

      response = payment.post(payment_json, id)
    end
  end
end
