require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      # post :create, params: {user: attributes_for(:user)}
      # expect(response).to have_http_status(:success)
    #   expect{
    #   post :create, params: {user: attributes_for(:user) }
    # }.to change(User,:count).by(+1)
    # expect(response.successful?)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
