class ContactMeMailer < ApplicationMailer
  default to: 'kftwotwo@gmail.com'

    def contact_me(contact_id)
      @contact = Contact.find(contact_id)
      mail( from: @contact.email, subject: 'From kftwotwo.com')
    end
end
