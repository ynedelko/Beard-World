require 'rails_helper'

describe "adding a beard process" do
  it "adds a new beard" do
    visit beards_path
    click_on 'Add Beard'
    fill_in 'Name', :with => 'Lumberjack'
    fill_in 'Rating', :with => '10'
    fill_in 'Image', :with => '/images/lumberjack.png'
    click_on 'Create Beard'
    expect(page).to have_content 'Beard World'
  end
end
