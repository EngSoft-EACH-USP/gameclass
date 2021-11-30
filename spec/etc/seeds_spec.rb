

require 'rails_helper'


RSpec.describe "db/seeds.rb" do
  /
    context 'When the seed is ran by "rails db:seed"' do

        Rails.application.load_seed

        it 'seeds the database with one admin' do
            user = User.find_by username: 'admin'
            expect(user).not_to be_nil
        end

        it 'seeds the database with one coach' do
            user = User.find_by username: 'coach'
            expect(user).not_to be_nil
        end

        it 'seeds the database with one learner' do
            user = User.find_by username: 'aluno'
            expect(user).not_to be_nil
        end
    end
  /
end
