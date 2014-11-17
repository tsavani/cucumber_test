# Given /I have entered (.*) into the calculator/ do |n|
# 	calculator = Calculator.new	
# 	calculator.push(n.to_i)
# end

# When /^I press add/ do |button|
#   click_button(button)
# end

# # Given /^I have entered (\d+) into the calculator/ do |arg1|
# #   pending # express the regexp above with the code you wish you had
# # end

# Then /^the result should be (\d+) on the screen/ do |arg1|
#   pending # express the regexp above with the code you wish you had
# end

Given %r{^I have entered (\d+) into the calculator$} do |arg|
	@cal = Calculator.new
	@cal.push(arg.to_i)
end

When %r{^I press add$} do 
 	 @arg
end

Then %r{^the result should be (\d+) on the screen$} do |arg|
   @arg.should == @arg
end