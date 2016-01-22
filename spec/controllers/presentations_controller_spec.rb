require "rails_helper"

describe PresentationsController do
  describe "#show" do
    let!(:presentation) { create :presentation }

    it "assigns the conference associated with that id" do
      get :show, id: presentation.id, conference_id: presentation.conference.id

      expect(assigns(:presentation)).to eq presentation
    end
  end
end
