require "spec_helper"

describe SettingsController, type: :controller do
  describe "GET show" do
    context "User is logged in" do
      before do
        sign_in :user, user
      end

      let!(:user) { create(:user) }

      it "allows the user to go to :show" do
        get :show
        expect(response.status).to eq 200
      end

      it "assigns @user" do
        get :show
        expect(assigns(:user)).to be_a User
      end
    end

    context "User is not logged in" do
      it "redirects the User" do
        get :show
        expect(response).to redirect_to new_user_session_path
      end
    end
  end
end
