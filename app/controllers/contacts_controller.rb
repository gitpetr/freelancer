class ContactsController < ApplicationController
 def create
    @contact = Contact.new contact_params
    if @contact.save
      UserMailer.welcome_email(@contact).deliver_later
      redirect_to root_path
    else
      render root_path
    end
  end

  private

    def contact_params
      params.require(:contact).permit(:phone, :email, :name, :message)
    end

end
