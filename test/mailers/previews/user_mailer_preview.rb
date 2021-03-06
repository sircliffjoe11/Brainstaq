# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def idea_expired_notice
    UserMailer.with(idea: Idea.last).idea_expired_notice.deliver_now
  end

  def send_welcome_email
    UserMailer.send_welcome_email(User.first)
  end
end
