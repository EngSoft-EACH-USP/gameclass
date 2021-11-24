
require "rails_helper"

RSpec.describe AdminController do
  include SessionHelper

  describe '#coaches' do
    it 'returns http unauthorized if not logged' do
      controller.stub(:is_logged?).and_return false
      get :coaches
      expect(response).to have_http_status 401
    end

    it 'returns http forbidden if is coach' do
      mock = build :user, kind: :coach
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return mock
      get :coaches
      expect(response).to have_http_status 403
    end

    it 'returns http forbidden if is learner' do
      mock = build :user, kind: :learner
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return mock
      get :coaches
      expect(response).to have_http_status 403
    end

    it 'renders :coaches if is admin' do
      mock = build :user, kind: :admin
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return mock
      get :coaches
      expect(response).to have_http_status 200
    end
  end

  describe "#remove" do
    it 'returns http unauthorized if not logged' do
      controller.stub(:is_logged?).and_return false
      delete :remove, params: {id: rand(500)}
      expect(response).to have_http_status 401
    end

    it 'returns http forbidden if is coach' do
      mock = build :user, kind: :coach
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return mock
      delete :remove, params: {id: rand(500)}
      expect(response).to have_http_status 403
    end

    it 'returns http forbidden if is learner' do
      mock = build :user, kind: :learner
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return mock
      delete :remove, params: {id: rand(500)}
      expect(response).to have_http_status 403
    end

    it 'deletes a coach record by id when logged as admin' do
      session_mock = build :user, kind: :admin

      user_mock = create :user, kind: :coach
      coach_mock = create :coach, user: user_mock

      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return session_mock

      delete :remove, params: {id: coach_mock.id}

      final = Coach.find_by_id coach_mock.id

      expect(final).to eq nil
    end
  end
end