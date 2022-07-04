require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.google.co.in/"

if driver.find_element(:class, 'gLFyf').displayed?
    search_bar = driver.find_element(:class, 'gLFyf')
    search_bar.send_keys "hello"
    search_bar.send_keys :enter
else
    puts "Search box input element not displayed."
end

sleep 5