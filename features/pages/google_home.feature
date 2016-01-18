Feature: Find the Capybara Website on Google Search

  Scenario: Search for the website
    Given I am on the Google homepage
    Then I search for "Capybara" on google search box
    Then I should see "dshkbgksdbgskd" on page title
