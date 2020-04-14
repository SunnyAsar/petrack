require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe " Create" do
    it "returns http success" do
      post :create, params:{user: attributes_for(:user)}
      expect(response).to have_http_status(:success)
    end

    it 'fails to create user' do
      post :create, params: { user: attributes_for(:invalid_user)}
      expect(response).to_not have_http_status(:success)
    end

    it 'Increases User count in Database' do
      expect{
        post :create, params: {user: attributes_for(:user)}
      }.to change(User,:count).by(+1)

    end
  end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
