require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(first_name: 'Yassine', last_name: 'Bounou', status: 'Active', email: 'y.bono@morocco.ma') }

  describe 'User' do
    context 'with valid parameters' do
      it 'should save the user to the database' do
        expect do
          subject.save
        end.to change(User, :count).by(1)
      end
      it 'should save the user with the correct data' do
        subject.save
        expect(User.last.first_name).to eq('Yassine')
        expect(User.last.last_name).to eq('Bounou')
        expect(User.last.status).to eq('Active')
        expect(User.last.email).to eq('y.bono@morocco.ma')
      end
    end
  end

  describe 'first_name' do
    it 'should not be empty' do
      subject.first_name = nil
      expect(subject).to_not be_valid
      expect do
        subject.save
      end.to change(User, :count).by(0)
    end

    it 'should have a max length of 250' do
      subject.first_name = 251.times.reduce('') { |t, _i| "#{t}9" }
      expect(subject).to_not be_valid
    end
  end

  describe 'last_name' do
    it 'should not be empty' do
      subject.last_name = nil
      expect(subject).to_not be_valid
      expect do
        subject.save
      end.to change(User, :count).by(0)
    end

    it 'should have a max length of 250' do
      subject.last_name = 251.times.reduce('') { |t, _i| "#{t}9" }
      expect(subject).to_not be_valid
    end
  end

  describe 'email' do
    it 'should be non empty' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'should be valid email format' do
      subject.email = 'y.bono~morocco.ma'
      expect(subject).to_not be_valid
    end
  end

  describe 'status' do
    it 'should be non empty' do
      subject.status = nil
      expect(subject).to_not be_valid
    end

    it 'should be either "Active" or "Inactive"' do
      subject.status = 'stand by'
      expect(subject).to_not be_valid
    end
  end
end
