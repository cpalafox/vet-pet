require 'spec_helper'

describe User do
  describe "#validations" do
    let(:user) { User.new }

    before(:each) do
      user.valid?
    end

    it "has an error on first_name" do
      expect(user).to have(1).error_on(:first_name)
    end
    it "has an error on last_name" do
      expect(user).to have(1).error_on(:last_name)
    end
    it "has an error on phone number" do
      expect(user).to have(1).error_on(:phone_number)
    end
    it "has an error on title" do
      expect(user).to have(1).error_on(:title)
    end
  end
end
