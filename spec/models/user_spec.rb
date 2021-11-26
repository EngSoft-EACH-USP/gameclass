require 'rails_helper'

RSpec.describe User, type: :model do
  it "Is valid if everything is present." do
    valid = build :user
    expect(valid).to be_valid;
  end
end
