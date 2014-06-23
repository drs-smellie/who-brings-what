When(/^I go to the signup page$/) do
  visit "/users/new"
end

When(/^I fill in email and password$/) do
  @name ||= Faker::Internet.name
  @email ||= Faker::Internet.email
  fill_in "Username", with: @name
  fill_in "Email", with: @email
  fill_in "Password", with: "wekuydgkuydkuy"
  click_on "Save"
end

Then(/^my account is created$/) do
  expect( User.exists?(email: @email) ).to be_true
end

Given(/^I have signed up$/) do
  @name = Faker::Internet.name
  @email = Faker::Internet.email
  @user = FactoryGirl.create :user, name: @name, email: @email
end


Given(/^I am logged in$/) do
  visit "/login"
  fill_in "Email", with: @email
  fill_in "Password", with: "letmeinplease"
end
