require 'rails_helper'

describe User, type: :model do
  fixtures :users
  subject { User.new }

  describe 'Validations' do
    describe '#name' do
      it 'is invalid when blank' do
        subject.name = ' ' * 6
        expect(subject).to_not be_valid
      end

      it 'is invalid when shorter than 3 characters' do
        subject.name = 'a' * 2
        expect(subject).to_not be_valid
      end

      it 'is invalid when longer than 50 characters' do
        subject.name = 'a' * 51
        expect(subject).to_not be_valid
      end

      it 'is valid with proper data' do
        expect(users(:one)).to be_valid
      end
    end

    describe '#full_name' do
      it 'is invalid when blank' do
        subject.full_name = ' ' * 6
        expect(subject).to_not be_valid
      end

      it 'is invalid when longer than 100 characters' do
        subject.full_name = 'a' * 101
        expect(subject).to_not be_valid
      end

      it 'is valid with proper data' do
        expect(users(:one)).to be_valid
      end
    end
  end
end
