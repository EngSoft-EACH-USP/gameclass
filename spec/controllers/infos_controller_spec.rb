
require 'rails_helper'

RSpec.describe InfosController, type: :controller do
  before :all do
    @user = create :user
    @params = {:id => @user.id}
  end

  context 'when logged' do
    before do
      controller.stub(:is_logged?).and_return true
    end

    it 'render edit page' do
      
      get :show, :params => @params
      expect(response).to render_template :forms
    end
  end

  context 'when not logged' do
    before do
      controller.stub(:is_logged?).and_return false
    end

    it 'redirects to /login' do
      get :show, :params => @params
      expect(response).to redirect_to '/login'
    end
  end

  describe 'different password' do
    before do
      @params = {:id => @user.id, :password => @user.password, :check_password => 'errei'}
    end
    it 'should return error' do
      post :update, :params => @params
      expect(assigns :password).to eq @params[:password]
    end
  end

  describe 'already in user username' do
    before do
      @params = {:id => @user.id, :username => @user.username}
    end
    it 'should return error' do
      post :update, :params => @params
      expect(assigns :username).to eq @params[:username]
    end
  end

  describe 'updated user' do
    before do
      @params = {:id => @user.id, :username => 'newusername'}
    end
    it 'should return error' do
      post :update, :params => @params
      expect(response).to redirect_to '/me'
    end
  end
end