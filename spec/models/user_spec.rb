require 'rails_helper'

RSpec.describe User, type: :model do

  it "Is valid if password and email are present" do
    @valid = User.new(username: FFaker::Name.first_name, password: 'Abcde123456_')
    expect(@valid).to be_valid;
  end

  it "Is invalid if username is nil" do
    @invalid = User.new(username: nil, password: "anlskdjalsk")
    expect(@invalid).to_not be_valid;
  end

  it "Is invalid if password is nil" do
    @invalid = User.new(username: FFaker::Name.first_name, password: nil)
    expect(@invalid).to_not be_valid;
  end

end
