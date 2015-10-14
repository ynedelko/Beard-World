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

  it "gives an error when a field is left empty" do
    visit new_beard_path
    fill_in 'Name', :with => 'Lumberjack'
    fill_in 'Rating', :with => '10'
    click_on 'Create Beard'
    expect(page).to have_content 'You have these errors:'
  end
end

describe "updating a beard" do
  it "edits a beard by given info" do
    beard = Beard.create(:name => 'Lumberjack', :rating => '6', :image_url => '/images/lumberjack.png')
    visit beard_path(beard)
    click_on 'Edit Beard'
    fill_in 'Rating', :with => '10'
    click_on 'Update Beard'
    expect(page).to have_content '10'
  end
end
