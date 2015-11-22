class CareersMailer < ActionMailer::Base
  default to: 'contact.us@blackvaultinvestments.com'

  def send_cv(name, email, body, attachment)
    @name = name
    @body = body
    attachments["#{name}-cv.pdf"] = attachment
    mail(from: email, subject: 'Careers - CV')
  end
end
