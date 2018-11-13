class AppMailer < ApplicationMailer
    default from: "vclass450@gmail.com"

    def welcome_email(user)
        @user = user
        mail(to: @user.email, subject: 'Bienvenido.')
    end
end
