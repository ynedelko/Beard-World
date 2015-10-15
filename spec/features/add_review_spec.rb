require 'rails_helper'

describe "adding a review process" do
  it "adds a new review" do
    beard = Beard.create(:name => 'Lumberjack', :rating => '6', :image_url => '/images/lumberjack.png')
    visit beard_path(beard)
    click_on "Add a review"
    fill_in 'User', :with => 'Bob'
    fill_in 'Text', :with => 'Love it!'
    click_on 'Create Review'
    expect(page).to have_content 'Love it!'
  end
end

describe "deleting a review process" do
  it "deletes a review" do
    beard = Beard.create(:name => 'Lumberjack', :rating => '6', :image_url => '/images/lumberjack.png')
    visit beard_path(beard)
    click_on "Add a review"
    fill_in 'User', :with => 'Bob'
    fill_in 'Text', :with => 'Love it!'
    click_on 'Create Review'
    click_on 'Delete'
    expect(page).to_not have_content 'Bob'
  end
end
