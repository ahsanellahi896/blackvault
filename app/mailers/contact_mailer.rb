class ContactMailer < ActionMailer::Base
  default to: 'contact.us@blackvaultinvestments.com'

  def contact_us(name, email, subject, body)
    @name = name
    @body = body
    mail(from: email, subject: subject)
  end
end
