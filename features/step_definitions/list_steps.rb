Then(/^I can create a List for this Event$/) do
  visit "/events/#{@event.id}"
  click_on "Create list"
  fill_in "We have to do this stuff"
end