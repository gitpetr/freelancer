class UserMailer < ApplicationMailer
  def welcome_email(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'Дружелюбный Start Bootstrap!')
  end
end
