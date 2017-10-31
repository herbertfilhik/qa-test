# require use this require ruby libraries to execute test 
require "selenium-webdriver"
require "rake"
require "rspec"
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.default_wait_time = 20
Capybara.javascript_driver = :webkit

#prepare environment to execute teste using the chrome browser 
Before do 
  #Path do chromedriver
  Selenium::WebDriver::Chrome.driver_path=("C:/Users/Herbert/Downloads/chromedriver_win32/chromedriver.exe")
  $driver = Selenium::WebDriver.for(:chrome)
  $driver.get("https://www.w3schools.com/php/demo_form_validation_complete.php")
end

After do
  $driver.quit
end