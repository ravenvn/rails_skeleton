class ApplicationMailer < ActionMailer::Base
  default from: ENV['TINCHINHCHU_EMAIL_FROM']
  layout 'mailer'
end
