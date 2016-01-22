require "rails_helper"

describe Presenter do
  it { should have_many :presentations }

  describe "#full_name" do
    it "concatenates the first and last name of the presenter" do
      presenter = create :presenter

      expect(presenter.full_name).to eq "#{presenter.first_name} #{presenter.last_name}"
    end
  end
end
