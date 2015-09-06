class Home < MailForm::Base

  attribute :name
  attribute :phone
  attribute :email
  attribute :message
  
  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "sent from our website",
      :to => "theldarlykhin.webdev@gmail.com",
      :from => %("#{name}")
    }

  end




end
