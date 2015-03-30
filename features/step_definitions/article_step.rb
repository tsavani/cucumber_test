Given /^I have articles titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Article.create!(:title => title)
  end
end

Given /^I have no articles$/ do
  Article.delete_all
end

Then /^I should have ([0-9]+) articles?$/ do |count|
  Article.count.should == count.to_i
end

When(/^I go to the list of articles$/) do
  visit root_path
end

Then(/^I should see "(.*?)"$/) do |arg1|
  visit root_path
end

Given(/^I am on the list of articles$/) do
  visit root_path
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link(arg1)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
  fill_in(arg1, :with => arg2)
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button(arg1)
end

