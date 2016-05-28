class PostMailer < ApplicationMailer
  default from: "from@example.com"
  layout 'mailer'
  
  def post_email(contact)
    @name = contact.name
    @message = contact.message
    mail to: contact.email, subject: "Achieveお問い合わせ完了"
  end
  
  
end
