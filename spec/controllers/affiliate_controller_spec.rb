
require "rails_helper"

RSpec.describe AffiliateController do
  include SessionHelper

  context "not logged" do
    it "#index returns 401" do
      controller.stub(:is_logged?).and_return false
      controller.stub(:current_user).and_return nil
      get :index
      expect(response).to have_http_status 401
    end

    it "#send_request does not register the request and return 401" do
      controller.stub(:is_logged?).and_return false
      controller.stub(:current_user).and_return nil

      count = AffiliateRequest.count

      post :send_request, params: { description: "Description" }

      expect(AffiliateRequest.count).to eq count
      expect(response).to have_http_status 401
    end
  end

  context "logged as learner" do
    it "#index renders index" do
      user = build :user, kind: :learner
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return user
      get :index
      expect(response).to render_template :index
    end

    it "#send_request registers the request" do
      # Sei que isso é uma má prática, mas vou mudar depois
      user = create :user, kind: :learner
      connect user

      description = FFaker::LoremBR.sentence 50
      post :send_request, params: { description: description }

      req = AffiliateRequest.find_by user: user
      expect(req.description).to eq description
    end
  end

  context "logged as coach" do
    it "#index returns 403 forbidden" do
      user = build :user, kind: :coach
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return user
      get :index
      expect(response).to have_http_status 403
    end

    it "#send_request reeturns 403 forbidden" do
      user = build :user, kind: :coach
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return user

      count = AffiliateRequest.count

      post :send_request, params: { description: "Description" }

      expect(AffiliateRequest.count).to eq count
      expect(response).to have_http_status 403
    end
  end

  context "logged as admin" do
    it "#index returns 403 forbidden" do
      user = build :user, kind: :admin
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return user
      get :index
      expect(response).to have_http_status 403
    end

    it "#send_request reeturns 403 forbidden" do
      user = build :user, kind: :admin
      controller.stub(:is_logged?).and_return true
      controller.stub(:current_user).and_return user

      count = AffiliateRequest.count

      post :send_request, params: { description: "Description" }

      expect(AffiliateRequest.count).to eq count
      expect(response).to have_http_status 403
    end
  end
end