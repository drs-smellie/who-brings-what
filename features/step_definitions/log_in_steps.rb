Given(/^I am logged in as a user$/) do
  @user = User.create! email: Faker::Internet.email, password: "letmeinplease", name: "Lady McPhakerson"
  visit '/'
  click_on 'Log me in'
end