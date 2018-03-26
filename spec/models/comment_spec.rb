require 'rails_helper'

describe Comment, type: :model do

  subject { Comment.new(content: "I'm a comment :)") }
  
  describe "Validations" do

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

  end
  
  describe "Associations" do
    
    it 'belongs to user' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end

    it 'belongs to post' do
      assc = described_class.reflect_on_association(:post)
      expect(assc.macro).to eq :belongs_to
    end

  end
end