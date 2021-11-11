
FactoryBot.define do
    factory :user do
        username { FFaker::Internet.user_name }
        password { FFaker::Internet.password }
        kind { %i[learner coach admin].sample }
        name { FFaker::NameBR.name }
    end
end