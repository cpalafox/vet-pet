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

  describe "#new" do
    before(:each) do
      get :new
    end

    it "renders new template" do
      expect(response).to render_template(:new)
    end

    it "exposes a new dog" do
      expect(controller.dog).to be_a_new(Dog)
    end
  end

  describe "#create" do
    context "right params" do
      it "redirects to index" do
        post :create, dog: attributes_for(:dog)  
        expect(response).to redirect_to(dogs_path)
      end

      it "creates a new dog" do
        expect {
          post :create, dog: attributes_for(:dog)
        }.to change(Dog, :count).by(1)
      end
    end

    context "wrong params" do
      it "renders new template" do
        post :create, dog: attributes_for(:dog, name: nil)
        expect(response).to render_template(:new)
      end
    end
  end
end