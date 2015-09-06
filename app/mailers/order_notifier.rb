class OrderNotifier < ActionMailer::Base
  default from: "htoomyatag.webdev@gmail.com"

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_order_email(order)
    @order = order
    mail(:to => "ghostrider.766@gmail.com" ,
    :subject => 'Order has arrived' )
  end
end
