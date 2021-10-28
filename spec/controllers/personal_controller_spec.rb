
require 'rails_helper'

RSpec.describe PersonalController, type: :controller do
  context 'when logged' do
    before do
      @user = build :user
      controller.stub(:isLogged?).and_return true
      controller.stub(:current_user).and_return @user
    end

    it 'render homepage' do
      get :home
      expect(response).to render_template :home
    end
  end

  context 'when not logged' do
    before do
      controller.stub(:isLogged?).and_return false
      controller.stub(:current_user).and_return nil
    end

    it 'redirects to /login' do
      get :home
      expect(response).to redirect_to '/login'
    end
  end
end