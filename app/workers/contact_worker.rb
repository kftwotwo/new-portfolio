class ContactWorker
  include Sidekiq::Worker

  def perform(contact_id)
    contact = Contact.find(contact_id)
    ContactMeMailer.contact_me(contact).deliver
  end
end
