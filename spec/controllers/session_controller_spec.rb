
require 'rails_helper.rb'

RSpec.describe SessionController, type: :controller do
  include SessionHelper
  before :each do
    @user = create :user
    @params = {
      username: @user.username,
      password: @user.password
    }
  end

  context "when logged in" do
    before :each do
      connect @user
    end

    describe "#forms" do
      it 'redirects to /me'do
        controller.stub(:isLogged?).and_return true
        get :forms
        expect(response).to redirect_to :me
      end
    end

    describe '#login' do
      it 'only redirects to /me' do
        connect @user
        second_user = create :user
        params2 = {
          username: second_user.username,
          password: second_user.password
        }
        post :login, params: params2
        expect(response).to have_http_status :no_content
        expect(current_user).to eq @user
      end
    end

    describe '#logout' do
      it 'logs me out' do
        delete :logout
        expect(response).to redirect_to '/'
        expect(current_user).to eq nil
        expect(isLogged?).to eq false
      end
    end
  end

  context "when not logged in" do
    describe '#forms' do
      it 'renders forms' do
        get :forms
        expect(response).to render_template :forms
      end
    end

    describe '#login' do
      it 'works when the world is perfect' do
        post :login, params: @params
        expect(response).to redirect_to '/me'
        expect(isLogged?).to be_truthy
        expect(current_user).to eq @user
      end

      it 'fails when username dsnt exist' do
        @params[:username] += '.'
        post :login, params: @params
        expect(response).to render_template :forms
        expect(isLogged?).to be_falsey
        expect(assigns :login_failed).to be_truthy
      end

      it 'fails when password is wrong' do
        @params[:password] += '.'
        post :login, params: @params
        expect(response).to render_template :forms
        expect(isLogged?).to be_falsey
        expect(assigns :login_failed).to be_truthy
      end
    end

    describe '#logout' do
      it 'cant do anything =D' do
        delete :logout
        expect(response).to redirect_to '/'
        expect(isLogged?).to eq false
        expect(current_user).to eq nil
      end
    end
  end
end