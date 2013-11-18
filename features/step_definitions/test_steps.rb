Given /^I'm on the flipkart homepage$/ do
  visit('/')
end

When /^I search for (.*)$/ do |search_query|
  @query = search_query
  fill_in('q', :with => @query)
  click_button('Search')
end

Then /^I should be able see the results of my search$/ do
  find(:xpath, '//*[@id="selectedFilters"]/div[1]/span[2]').should have_content(@query)

end