
require "rails_helper"

RSpec.describe AffiliateController do
  include SessionHelper

  def login_as kind
    @user = create :user, kind: kind
    connect @user
  end

  def logout
    disconnect_user
  end

  # Response pode ser :save, :unauth ou :forbidden
  def post_and_expect(expected)
    description = FFaker::LoremBR.sentence 50
    previous_count = AffiliateRequest.count

    # Envia a solicitação
    post :send_request, params: { description: description }

    case expected
    # Espera que ele salve a solicitação
    when :save
      req = AffiliateRequest.find_by user: @user
      expect(req.description).to eq description
      expect(AffiliateRequest.count).to eq(previous_count + 1)

    # Espera que que ele receba 401 como resposta
    when :unauth
      expect(AffiliateRequest.count).to eq previous_count
      expect(response).to have_http_status 401

    # Espera que que ele receba 403 como resposta
    when :forbidden
      expect(AffiliateRequest.count).to eq previous_count
      expect(response).to have_http_status 403
    else
      raise "Erro nos testes: o tipo de resosta \"#{response}\" não é válido."
    end
  end

  context "logged as learner" do
    before :each do
      login_as :learner
    end

    it "#index renders index" do
      get :index
      expect(response).to render_template :index # Isso pode não deixar claro que o pedido foi enviado.
    end

    it "#send_request registers the request" do
      post_and_expect :save
    end
  end

  context "unauthenticated" do
    before :each do
      logout
    end

    it "#index returns 401" do
      get :index
      expect(response).to have_http_status 401
    end

    it "#send_request does not register the request and return 401" do
      post_and_expect :unauth
    end
  end

  context "logged as coach" do
    before :each do
      login_as :coach
    end

    it "#index returns 403 forbidden" do
      get :index
      expect(response).to have_http_status 403
    end

    it "#show returns 403 forbidden" do
      get :show
      expect(response).to have_http_status 403
    end

    it "#send_request reeturns 403 forbidden" do
      post_and_expect :forbidden
    end
  end

  context "logged as admin" do
    before :each do
      login_as :admin
      @user = create :user, :kind => :learner
      @affiliate = create :affiliate_request, :user_id => @user.id
      @params = {:id => @affiliate.id}
    end

    it "#index returns 403 forbidden" do
      get :index
      expect(response).to have_http_status 403
    end

    it "#send_request reeturns 403 forbidden" do
      post_and_expect :forbidden
    end

    it "#show get all affiliates" do
      get :show
      expect(response).to have_http_status 200
    end

    it "#update accept/reject affiliate_request" do
      post :update, :params => @params
      expect(response).to redirect_to '/admin/affiliate'
    end
  end
end