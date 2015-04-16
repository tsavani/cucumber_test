require 'rails_helper'

#require "selenium-webdriver"

# driver = Selenium::WebDriver.for :Chrome
# driver.navigate.to "http://google.com"

RSpec.describe ArticlesController, :type => :controller do
  local_path = "http://localhost:3000/"
  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe 'Insert Title and Content' do
  it 'lets the user insert title', :js => true do
    visit local_path + root_path
    click_on 'Create'
    fill_in 'Title', :with => 'J. Random Hacker'
    fill_in 'Content', :with => 'Awesome post!'
    click_on 'Create'  # this be an Ajax button -- requires Selenium
    page.should have_content('New article created.')
  end
end

end
