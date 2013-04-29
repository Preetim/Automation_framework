

Given /^I search for "([^"]*)"$/ do |item|
  @home_page= HomePage.new(Capybara.current_session)
  @home_page.visit
  @home_page.search item
end

When /^I select the first "([^"]*)" item from the search results page$/ do |item_name|
  @search_result_page=SearchResultsPage.new(Capybara.current_session)
  @search_result_page.select_item_from_results item_name
end
When /^I add it to my shopping cart$/ do
  @features_page = FeaturesPage.new(Capybara.current_session)
  @features_page.add_to_cart
end

Then /^I should be redirected to the login page$/ do
  binding.pry
  page.has_content?("Sign in")
  #@session.should have_content("Sign in")
end