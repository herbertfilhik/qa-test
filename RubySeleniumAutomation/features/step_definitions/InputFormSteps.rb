
#Include Male Input Form
Given(/^User in Form Website for input Male Register$/) do
end

When(/^User input personal form data for input Male Register$/) do
  $driver.find_element(:name,"name").send_keys("joao da silva")
  $driver.find_element(:name,"email").send_keys("teste@teste.com.br")
  $driver.find_element(:name,"website").send_keys("www.website.com.br")
  $driver.find_element(:name,"comment").send_keys("comment")
  $driver.find_element(:xpath,"/html/body/form/input[5]").click()
end

When(/^User click on button Submit for input Male Register$/) do
  $driver.find_element(:name,"submit")
end

Then(/^Insert the new user information for input Male Register$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  $driver.find_element(:xpath, "/html/body/h2[2]")
end

#Include Female Input Form
Given(/^User in Form Website for input Female Register$/) do
end

When(/^User input personal form data for input Female Register$/) do
  $driver.find_element(:name,"name").send_keys("joana da silva")
  $driver.find_element(:name,"email").send_keys("teste1@teste.com.br")
  $driver.find_element(:name,"website").send_keys("www.website1.com.br")
  $driver.find_element(:name,"comment").send_keys("comment1")
  $driver.find_element(:xpath,"/html/body/form/input[4]").click()
end

When(/^User click on button Submit for input Female Register$/) do
  $driver.find_element(:name,"submit")
end

Then(/^Insert the new user information for input Female Register$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  $driver.find_element(:xpath, "/html/body/h2[2]")
end

#Validate required fields
Given(/^User in Form Website for validate required Fields$/) do
end

When(/^User dont fill any field$/) do
  emptyvar = ""
  $driver.find_element(:name,"name").send_keys(emptyvar)
  $driver.find_element(:name,"email").send_keys(emptyvar)
  $driver.find_element(:name,"website").send_keys(emptyvar)
  $driver.find_element(:name,"comment").send_keys(emptyvar)
  $driver.find_element(:xpath,"/html/body/form/input[4]").click()
end

When(/^User click on Submit Button without fill fields$/) do
  $driver.find_element(:name,"submit")
end

Then(/^The system must be show a feedback to user about the fields not fill$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
end