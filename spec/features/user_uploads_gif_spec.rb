require "spec_helper"

feature "user uploads gif" do
  scenario "upload a gif" do
    visit "/"
    click_link "Upload"
    attach_file "Gif", File.absolute_path("./spec/walkman.gif")
    select "foreground", from: "gif_type"
    click_button "Upload"
    expect(page).to have_content "New Gif added to the Hivemind."
  end
end
