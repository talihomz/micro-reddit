require 'rails_helper'

describe Post, type: :model do
  subject { Post.new(content: "I'm a post :)") }

  describe 'Validations' do
    describe '#content' do
      it 'is invalid when blank' do
        subject.content = ' ' * 10
        expect(subject).to_not be_valid
      end

      it 'is invalid when longer than 500 characters' do
        subject.content = 'a' * 501
        expect(subject).to_not be_valid
      end
    end
    describe '#user' do
      it 'is invalid when blank' do
        puts 
        subject.content = ' ' * 10
        expect(subject).to_not be_valid
      end
    end
  end

  describe 'Associations' do
    it 'belongs to user' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end

    it 'has many comments' do
      assc = described_class.reflect_on_association(:comments)
      expect(assc.macro).to eq :has_many
    end
  end
end
