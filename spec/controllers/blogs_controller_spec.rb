require 'rails_helper'

describe BlogsController do

  before do
    @admin = FactoryGirl.create(:admin)
  end

  describe "GET new" do
    before { get :new }

    context "as a non-user" do
      it "has a 302 status code" do
        expect(response.status).to eq(302)
      end

      it "renders new" do
        expect(response).to redirect_to("/admins/sign_in")
      end
    end

    # context 'as admin' do
    #   it "has a 200 status code" do
    #     sign_in(@admin)
    #     expect(response.status).to eq(200)
    #   end
    # end
  end

  describe "POST create" do
    it "has a 302 status code" do
      contact = { first_name: "test", last_name: "test", email: "test@test.com", description: "this is the description"}
      post :create, contact: contact
      expect(response.status).to eq(302)
    end
  end
end
