require "rails_helper"

feature "User creates a new conference" do
  scenario "creating a new conference" do
    visit new_conference_path

    fill_in I18n.t("conference.labels.name"), with: "New conference"
    select_date I18n.t("conference.labels.starts_on"), with: Date.today
    select_date I18n.t("conference.labels.ends_on"), with: Date.today + 2.days

    click_button t("conference.new.cta")

    expect(page).to have_content(t("conference.create.success"))
    expect(page).to have_content("New conference")
  end

  def select_date(label, options={})
    date_field_id = find("label", text: label)["for"]
    date_field_id.slice!("_1i")
    date = options[:with]

    select(date.year, from: "#{date_field_id}_1i")
    select(date.strftime("%b"), from: "#{date_field_id}_2i")
    select(date.day, from: "#{date_field_id}_3i")
  end
end
