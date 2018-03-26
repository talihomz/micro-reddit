require_relative '../rails_helper'

describe Post, :type => :model do
    subject { Post.new(content: "I'm a post :)", user_id: 1) }

    describe "#content" do 
      it "is invalid when blank" do 
        subject.content = "k" * 10
        expect(subject).to be_valid
      end

      it "is invalid when longer than 500 characters" do 
        subject.content = "a" * 501
        expect(subject).to be_valid
      end
    end

    describe "Associations" do 
      it "belongs to user" do
        assc = described_class.reflect_on_association(:user)
        expect(assc.macro).to eq :belongs_to
      end
    end
end