require 'rails_helper'

RSpec.describe AffiliateRequest, type: :model do

  it "is invalid if status is not present" do
    req = AffiliateRequest.new
    req.status = nil
    expect(req).to_not be_valid
  end

end
