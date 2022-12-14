require 'rails_helper'
require_relative '../../app/services/users_service'

RSpec.describe UsersCreator do
  let(:valid_user_params) do
    [{ first_name: 'Yassine', last_name: 'Bounou', status: 'Active', email: 'y.bono@morocco.ma' },
     { first_name: 'me', last_name: 'my last name', status: 'Active', email: 'me.myself@morocco.ma' }]
  end

  let(:empty_user_params) do
    []
  end

  let(:mixed_user_params) do
    [{ first_name: 'Yassine', last_name: 'Bounou', status: 'Active', email: 'y.bono@morocco.ma' },
     { first_name: nil, last_name: 'my last name', status: 'standby', email: 'me.myself@morocco.ma' }]
  end

  describe 'UsersCreator' do
    context 'with valid array of user_params' do
      it 'should create the users and save them to the database' do
        expect do
          UsersCreator.new(valid_user_params).call
        end.to change(User, :count).by(valid_user_params.length)
      end

      it 'should save the user with the correct data' do
        UsersCreator.new(valid_user_params).call
        expect(User.first.first_name).to eq('Yassine')
        expect(User.first.last_name).to eq('Bounou')
        expect(User.first.status).to eq('Active')
        expect(User.first.email).to eq('y.bono@morocco.ma')
      end
    end

    context 'with empty array of user_params' do
      it 'should not do anything with the database' do
        expect do
          UsersCreator.new(empty_user_params).call
        end.to change(User, :count).by(empty_user_params.length)
      end
    end

    context 'with a mixed array of valid and invalid user_params' do
      it 'should create only the users with valid params and save them to the database' do
        expect do
          UsersCreator.new(mixed_user_params).call
        end.to change(User, :count).by(1)
      end

      it 'should create only the users with valid params and save them to the database' do
        UsersCreator.new(mixed_user_params).call
        expect(User.first.first_name).to eq('Yassine')
        expect(User.first.last_name).to eq('Bounou')
        expect(User.first.status).to eq('Active')
        expect(User.first.email).to eq('y.bono@morocco.ma')
      end
    end
  end

end
