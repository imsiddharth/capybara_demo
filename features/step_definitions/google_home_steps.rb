include CreateDriver
launch_capybara_driver
$utility = Utility::CommonUtility.new(driver)

Given(/^I am on the Google homepage$/) do
  $utility.navigate_url('http://www.google.com')
end

Then(/^I search for "([^"]*)" on google search box$/) do |arg1|
  $utility.enter_text('q', arg1)
  sleep 10
end

Then(/^I should see "([^"]*)" on page title$/) do |arg1|
  $utility.page_title(arg1)
end