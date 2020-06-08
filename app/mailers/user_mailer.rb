class UserMailer < ApplicationMailer
    default from: 'brainstaq@gmail.com'

    def send_welcome_email(user)
        @user = user
        mail(:to => @user.email, :subject => "Welcome to Brainstaq!")
    end
end
