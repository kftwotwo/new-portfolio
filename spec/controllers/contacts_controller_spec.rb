require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe "GET new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "POST create" do
    it "has a 302 status code" do
      contact = { first_name: "test", last_name: "test", email: "test@test.com", description: "this is the description"}
      post :create, contact: contact
      expect(response.status).to eq(302)
    end
  end
end
