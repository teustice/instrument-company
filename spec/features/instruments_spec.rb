require 'rails_helper'

describe "instruments page navigation" do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    FactoryGirl.create(:instrument)
  end

  it "displays instruments" do
    visit instruments_path
    expect(page).to have_content 'Fender Telecaster'
  end

  it "shows a single instruments page" do
    visit instruments_path
    first(:link, "Fender Telecaster").click
    expect(page).to have_content 'Fender Telecaster'
    expect(page).to have_content 'Add a review'
  end

  it "shows a single instruments page" do
    visit instruments_path
    first(:link, "Fender Telecaster").click
    expect(page).to have_content 'Fender Telecaster'
    expect(page).to have_content 'Add a review'
  end

  it "creates a review" do
    visit instruments_path
    first(:link, "Fender Telecaster").click
    click_link 'Add a review'
    expect(page).to have_content 'New Review'
    fill_in 'Title', :with => 'beans'
    fill_in 'Content', :with => 'A whole lot of beans'
    choose('4')
    click_on 'Create Review'
    expect(page).to have_content 'Review successfully added!'
  end
end
