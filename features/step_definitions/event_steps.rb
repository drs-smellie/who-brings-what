When(/^I create a new event$/) do
  visit "/events/new"
end

Then(/^I can give it the name "(.*?)"$/) do |eventname|
  fill_in "Event name", with: eventname
end

Then(/^I can give it a date and time$/) do
  select "24", from: "event_date_3i"
  select "July", from: "event_date_2i"
  select "2015", from: "event_date_1i"
  select "12", from: "event_date_4i"
  select "30", from: "event_date_5i"
end

Then(/^I can give it a description "(.*?)"$/) do |feestje|
  fill_in "Description", with: feestje
end

Then(/^I am redirected to the "(.*?)" page$/) do |eventname|
  click_on "Save"
  page.should have_content eventname
end

Given(/^there is an event called "(.*?)"$/) do |eventname|
  
end

When(/^I am on the event page "(.*?)"$/) do |eventname|
  visit "/events/#{@events.id}"
  page.should have_content eventname
end