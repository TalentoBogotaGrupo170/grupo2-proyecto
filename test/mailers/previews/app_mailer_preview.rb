# Preview all emails at http://localhost:3000/rails/mailers/app_mailer
class AppMailerPreview < ActionMailer::Preview
    def welcome_mail_preview
        AppMailer.welcome_email(User.first)
      end
end
