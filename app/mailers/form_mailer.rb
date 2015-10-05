class FormMailer < ApplicationMailer
  #contactを作成して実験してみる？
  def contact(contact)
    @contact = contact
    mail(:to => @contact.email, :bcc => "higuchi@unistyleinc.com", :subject => "お問い合わせありがとうございました")
  end
end
