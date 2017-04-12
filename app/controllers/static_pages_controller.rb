class StaticPagesController < ApplicationController

  def index
    @contact_kevin = Contact.new
  end

  def create

  end

  private

  def params
  end
end
