require "rails_helper"

feature "User views a conference schedule" do
  scenario "" do
    conference = create(:conference)

    presenter1 = create(:presenter, first_name: "Alice")
    presenter2 = create(:presenter, first_name: "Bob")

    first = create(:presentation, conference: conference, presenter: presenter1, starts_at: Time.now - 30.minutes)
    late_keynote = create(:presentation, conference: conference, presenter: presenter1, starts_at: Time.now)
    second = create(:presentation, conference: conference, presenter: presenter2, starts_at: Time.now - 30.minutes)

    visit conference_path(conference)

    expect(page).to have_presentation(first)
    expect(page).to have_presentation(second)
    expect(page).to have_presentation(late_keynote)
  end

  def have_presentation(presentation)
    have_css(".presentation", presentation.title)
  end
end
