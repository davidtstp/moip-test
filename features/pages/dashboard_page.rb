class DashboardPage < SitePrism::Page

  #Login
element :email, "[type='email']"
element :senha, "[type='password']"
element :btn_acessar, "[type='submit']"

#Dashboard
element :ordem_id, ".order-h-id span"
element :nome_comprador, ".label-detail:nth-of-type(4) bdi"
element :email_comprador, ".span8 bdi"

  def executar_login(string, string2)
    email.set string
    senha.set string2
    btn_acessar.click
  end
end
