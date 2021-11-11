
require 'rails_helper'

RSpec.describe WhoamiController, type: :controller do
  context 'when logged' do
    before do
      @user = build :user
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return @user
    end

    it 'responds with the name' do
      get :index
      expect(response.body).to include @user.name
    end
  end

  context 'when not logged' do
    before do
      controller.stub(:is_logged?).and_return false
      controller.stub(:current_user).and_return nil
    end

    it 'tells not logged' do
      get :index
      expect(response.body).to include 'not logged'
    end
  end
end