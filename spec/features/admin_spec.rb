require 'rails_helper'

describe "Admin actions" do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  it "allows admins to go to the admin path" do
    visit root_path
    click_link 'admin dashboard'
    expect(page).to have_content 'Site Administration'
  end

  it "creates an instrument" do
    visit rails_admin_path
    first(:link, 'Instruments').click
    click_link 'Add new'
    fill_in 'Brand', :with => 'beans'
    fill_in 'Description', :with => 'a whole lot of beans'
    page.attach_file("Image", Rails.root + 'app/assets/images/landing-guitar.png')
    fill_in 'Price', :with => '1000'
    click_on 'Save'
    expect(page).to have_content 'Instrument successfully created'
  end
end
