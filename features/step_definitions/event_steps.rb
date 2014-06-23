When(/^I create a new event$/) do
  visit "/events/new"
end

Then(/^I can give it the name "(.*?)"$/) do |eventname|
  fill_in "Event name", with: eventname
end

Then(/^I can give it a date and time$/) do
  
end