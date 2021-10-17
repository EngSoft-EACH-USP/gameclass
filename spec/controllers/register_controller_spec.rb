
require 'rails_helper.rb'

RSpec.describe RegisterController, type: :controller do
  before :all do
    @user = build :user
  end

  before :each do
    @params = {
      username: @user.username,
      name: @user.name,
      password: @user.password,
      check_password: @user.password
    }
  end

  def retrieved_user
    User.find_by_username @user.username
  end

  it 'works if when is present' do
    post :new, params: @params
    expect(retrieved_user).to_not be_nil
    expect(response).to redirect_to '/login'
  end

  it 'fails if passwords are different' do
    @params[:check_password] += '.'
    post :new, params: @params
    expect(retrieved_user).to be_nil
    expect(assigns :different_passwords).to be_truthy
    expect(response).to render_template :forms
  end

  it 'fails if username is already being used' do
    @user.save
    post :new, params: @params
    expect(assigns :username_unavailable).to be_truthy
    expect(response).to render_template :forms
  end

  context "Missing fields" do
    it "fails if username is missing" do
      @params[:username] = ''
    end

    it "fails if name is missing" do
      @params[:name] = ''
    end

    it "fails if password is missing" do
      @params[:password] = ''
    end

    after :each do
      post :new, params: @params
      expect(retrieved_user).to be_nil
      expect(response).to render_template :forms
      expect(assigns :username).to eq @params[:username]
      expect(assigns :name).to eq @params[:name]
      expect(assigns :missing_field).to be_truthy
    end
  end

end