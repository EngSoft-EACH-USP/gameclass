
FactoryBot.define do
    factory :coach do
        game { 'lol' } # Adicionar mais jogos no lugar disso depois
        description { FFaker::Lorem.sentences 30 }
        whatsapp { FFaker::PhoneNumberBR.phone_number }
    end
end