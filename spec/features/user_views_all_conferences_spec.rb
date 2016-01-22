require "rails_helper"

feature "User views all conferences" do
  scenario "view all conferences" do
    first_conference = create(:conference, name: "Boston Ruby Conference")
    second_conference = create(:conference, name: "New York Ruby Conference")

    visit conferences_path

    expect(page).to have_conference(first_conference)
    expect(page).to have_conference(second_conference)
  end

  def have_conference(conference)
    have_css(".conference", conference.name)
  end
end
