
FactoryBot.define do
    factory :user do
        username { FFaker::NameBR.first_name }
        password { "Abcde1233456_" }
        kind { %i[learner coach admin].sample }
        name { FFaker::NameBR.name }
    end
end