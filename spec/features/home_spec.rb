require "spec_helper"

feature "Visit the homepage" do
  scenario "it displays the homepage" do
    visit "/"

    expect(page).to have_text("landlady")
  end
end