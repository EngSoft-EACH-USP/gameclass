require 'rails_helper'

RSpec.describe User, type: :model do

  # Valid fields
  username = FFaker::NameBR.first_name
  password = "Abcde1233456_"
  kind = %i[learner coach admin].sample
  name = FFaker::NameBR.name
  description = FFaker::LoremBR.sentence 50
  whatsapp = FFaker::PhoneNumberBR.phone_number

  it "Is valid if everything is present." do

    valid = User.new(
      username: username,
      password: password,
      kind: kind,
      name: name,
      description: description,
      whatsapp: whatsapp)
      
    expect(valid).to be_valid;
  end

  it "Is invalid if username is nil." do
    invalid = User.new(
      #username: username,
      password: password,
      kind: kind,
      name: name,
      description: description,
      whatsapp: whatsapp)
    expect(invalid).to_not be_valid;
  end

  it "Is invalid if password is nil." do
    invalid = User.new(
      username: username,
      #password: password,
      kind: kind,
      name: name,
      description: description,
      whatsapp: whatsapp)
    expect(invalid).to_not be_valid;
  end

  it "Is invalid if name is nil." do
    invalid = User.new(
      username: username,
      password: password,
      kind: kind,
      #name: name,
      description: description,
      whatsapp: whatsapp)
    expect(invalid).to_not be_valid;
  end

  it "Is invalid if kind is nil." do
    invalid = User.new(
      username: username,
      password: password,
      #kind: kind,
      name: name,
      description: description,
      whatsapp: whatsapp)
    expect(invalid).to_not be_valid;
  end

end
