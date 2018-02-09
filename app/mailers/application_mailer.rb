class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def test_email(user)
    mail(to: user.email, subject: 'Welcome to Timber')
  end
end
