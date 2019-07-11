require 'rails_helper'

describe "User can see list of houses" do
  it "can see houses" do
    visit '/houses'

    expect(page).to have_content("House Algood")
  end
end
