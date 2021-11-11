
FactoryBot.define do
  factory :affiliate_request do
    description { FFaker::Lorem.sentences 30 }
    status { :pending }
  end
end