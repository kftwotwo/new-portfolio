class StaticPagesController < ApplicationController

  def index
    @contact_kevin = Contact.new
  end

end
