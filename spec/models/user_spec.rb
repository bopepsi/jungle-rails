require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'Validations' do
        it 'should have password for new user' do
            @user = User.new 
            @user.password_digest = '119'
            @user.password_confirmation = '119'
            expect(@user.password_digest).to be_present
        end
        it 'should have a password confirmation for new user' do
            @user = User.new 
            @user.password_digest = '119'
            @user.password_confirmation = '119'
            expect(@user.password_confirmation).to be_present
        end
        it 'should make sure email must be unique' do
            @user = User.new
            @user.email = 'Test@TEST.com'
            database_email = 'test@test.com'
            @user.email.strip!
            expect(@user.email.downcase).to eql(database_email)
        end
        it 'should ensure password length is greater than 6' do
            @user = User.new
            @user.password_digest = 'thisisstr'
            expect(@user.password_digest.length).to be>(6)
        end

    describe '.authenticate_with_credentials' do
        it 'should auth' do
            @response = User.create({email:"b@gmail.com", password:"1111111111"})
            expect(@response.id).to be_present;
        end
        it 'should auth with white spaces before or after email' do
            @response = User.create({email:"  b@gmail.com", password:"1111111111"})
            expect(@response.id).to be_present;
        end
        it 'should auth with wrong case' do
            @response = User.create({email:"  B@gMail.com    ", password:"1111111111"})
            expect(@response.id).to be_present;
        end
    end

    end
end