require 'rails_helper'

RSpec.describe User, type: :model do
  it "Is valid if everything is present." do
    valid = build :user
    expect(valid).to be_valid;
  end

  it "Is invalid if username is nil." do
    invalid = build :user, :username => nil
    expect(invalid).to_not be_valid;
  end

  it "Is invalid if password is nil." do
    invalid = build :user, :password => nil
    expect(invalid).to_not be_valid;
  end

  it "Is invalid if name is nil." do
    invalid = build :user, :name => nil
    expect(invalid).to_not be_valid;
  end

  it "Is invalid if kind is nil." do
    invalid = build :user, :kind => nil
    expect(invalid).to_not be_valid;
  end
end
