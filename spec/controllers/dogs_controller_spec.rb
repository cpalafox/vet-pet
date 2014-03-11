require "spec_helper"

describe DogsController do
  let(:dog) { create(:dog) }
  
  describe "#index" do
    before(:each) do
      get :index
    end

    it "renders index template" do
      expect(response).to render_template(:index)
    end

    it "exposes list of dogs" do
      expect(controller.dogs).to eq([dog])
    end
  end
end