module ServiceHelpers
  def customer
    @customer ||= Service::Customer.new
  end

  def order
    @order ||= Service::Order.new
  end

  def payment
    @payment ||= Service::Payment.new
  end
end
