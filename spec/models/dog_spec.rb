require 'spec_helper'

describe Dog do

  let(:dog) { Dog.new }

  describe "#validations" do
    before(:each) do
      dog.valid?
    end

    it "has an error on name" do
      expect(dog).to have(1).error_on(:name)
    end

    it "has an error on age" do
      expect(dog).to have(1).error_on(:age)
    end

    it "has an error on age_unit" do
      expect(dog).to have(1).error_on(:age_unit)
    end

    it "has an error on weight" do
      expect(dog).to have(1).error_on(:weight)
    end

    it "has an error on weight_unit" do
      expect(dog).to have(1).error_on(:weight_unit)
    end

    it "has an error on breed" do
      expect(dog).to have(1).error_on(:breed)
    end

    it "has an error on stage" do
      expect(dog).to have(1).error_on(:stage)
    end

    it "has an error on size" do
      expect(dog).to have(1).error_on(:size)
    end

    it "has a valid factory" do
      dog_fact = build(:dog)
      expect(dog_fact).to be_valid
    end
  end
end
