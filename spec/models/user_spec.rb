require_relative '../rails_helper'

describe User, :type => :model do
  subject { User.new(name: "usr", full_name: "Example User") }
  
  describe "#name" do 
    it "is invalid when blank" do
      subject.name = " " * 6
      expect(subject).to_not be_valid
    end

    it "is invalid when shorter than 3 characters" do
      subject.name = "a" * 2
      expect(subject).to_not be_valid
    end

    it "is invalid when longer than 50 characters" do
      subject.name = "a" * 51
      expect(subject).to_not be_valid
    end
  end
    

  describe "#full_name" do
    it "is invalid when blank" do
      subject.full_name = " " * 6
      expect(subject).to_not be_valid
    end

    it "is invalid when longer than 100 characters" do
      subject.full_name = "a" * 101
      expect(subject).to_not be_valid
    end
  end

end
