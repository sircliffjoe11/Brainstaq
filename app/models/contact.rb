class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject, validate: true
  attribute :message
  attribute :nickname, captcha: true

  def headers
    { 
      #this is the subject for the email generated, it can be anything you want
      subject: "Brainstaq New Message",
      to: 'brainstaq@gmail.com',
      from: %("#{name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end