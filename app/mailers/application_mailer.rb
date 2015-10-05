class ApplicationMailer < ActionMailer::Base
  default from: "easysitemaker事務局"
  layout 'mailer'
  
  def welcome_email(site)
    @site = site
    mail(to: @site.email, subject: "Welcome!")
  end
end
