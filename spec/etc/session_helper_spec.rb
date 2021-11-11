
require 'rails_helper'

RSpec.describe 'app/helpers/sessions_helper.rb', type: :helper do
    include SessionHelper
    
    it 'tells whether a session is up or down' do
        session[:logged] = true
        expect(is_logged?).to eq true

        session[:logged] = false
        expect(is_logged?).to eq false
    end

    it 'tells who is logged' do

        kind = %i[ learner coach admin ].sample
        user = User.new name: FFaker::Name.name, username: FFaker::Internet.user_name, password: FFaker::Internet.password, kind: kind
        user.save

        session[:logged] = true
        session[:user_id] = user.id
        
        expect(current_user.id).to eq(user.id)
    end

    it 'it checks if the user matches the permission level' do

        kind = %i[ learner coach admin ].sample
        user = User.new name: FFaker::Name.name, username: FFaker::Internet.user_name, password: FFaker::Internet.password, kind: :admin
        user.save

        session[:logged] = true
        session[:user_id] = user.id
        
        expect(has_permission? :learner, :admin, :coach).to eq true
        expect(has_permission?).to eq(false)
        expect(has_permission? :coach, :learner).to eq false
    end

    it 'logs a user' do
        user = User.new name: FFaker::Name.name, username: FFaker::Internet.user_name, password: FFaker::Internet.password, kind: :admin, id: 12345
        connect user
        expect(session[:logged]).to eq true
        expect(session[:user_id]).to eq 12345
    end

    it 'logs out' do
        session[:logged] = true
        session[:user_id] = 123456
        disconnect_user
        expect(session[:logged]).to eq false
        expect(session[:user_id]).to be_nil
    end
end