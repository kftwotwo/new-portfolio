class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactWorker.perform_async(@contact.id)
      flash[:success] = "Your message was sent. Thank you, I will touch bases with you as soon as possible!"
      redirect_to root_path
    else
      render :new
      flash[:error] = "Opps..If you can't send the message you can send me an email!"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :description)
  end
end
