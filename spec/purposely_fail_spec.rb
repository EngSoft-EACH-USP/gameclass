# Esse spec foi feito exclusivamente para testar o GitHub actions

require 'rails_helper'

RSpec.describe "Testing if github actions fails correctly." do
    it "just fails" do
        expect(true).to eq false
    end
end