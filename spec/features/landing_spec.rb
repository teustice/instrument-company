require 'rails_helper'

describe "landing page navigation" do
  before :each do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
  end

  it "logs in a user successfully" do
    visit root_path
    expect(page).to have_content 'sweet@boy'
  end
  
  it "navigates to the products page" do
    visit root_path
    click_link 'Products'
    expect(page).to have_content 'Instruments available:'
  end


  # it "gives error when no name is entered" do
  #   visit new_list_path
  #   click_on 'Create List'
  #   expect(page).to have_content 'errors'
  # end
end
