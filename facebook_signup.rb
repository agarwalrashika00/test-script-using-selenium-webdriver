require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.facebook.com/"
sleep 2

if driver.find_element(:class, '_4jy2').displayed?    
    driver.find_element(:class, '_4jy2').click
    puts "Create new account button clicked"
else
    puts "Create new account button not displayed"
end
sleep 3

if driver.find_element(:name, 'firstname').displayed?
    driver.find_element(:name, 'firstname').send_keys "Selenium"
    puts "Selenium is entered in firstname textbox"
else
    puts "firstname text box is not displayed"
end
sleep 1

if driver.find_element(:name, 'lastname').displayed?
    driver.find_element(:name, 'lastname').send_keys "Webdriver"
    puts "Webdriver is entered in lastname textbox"
else
    puts "lastname text box is not displayed"
end
sleep 1

if driver.find_element(:name, 'reg_email__').displayed?
    driver.find_element(:name, 'reg_email__').send_keys "1234567899"
    puts "Phone number entered"
else
    puts "enter phone no or email input box not displayed"
end
sleep 1

if driver.find_element(:name, 'reg_passwd__').displayed?
    driver.find_element(:name, 'reg_passwd__').send_keys "selenium"
    puts "Password is entered in the password field"
else
    puts "Password input box not displayed"
end
sleep 1

if driver.find_element(:name, 'birthday_day').displayed?
    dates = driver.find_elements(:tag_name, 'option')
    dates.each do |date|
        if(date.text == '1')
            date.click
            puts "1 is selected in day dropdown"
            break
        end
    end
else
    puts "Date select box not displayed"
end

if driver.find_element(:name, 'birthday_month').displayed?
    months = driver.find_elements(:tag_name, 'option')
    months.each do |month|
        if(month.text == 'Jan')
            month.click
            puts "Jan is selected in month dropdown"
            break
        end
    end
else
    puts "Months select box not displayed"
end

if driver.find_element(:name, 'birthday_year').displayed?
    years = driver.find_elements(:tag_name, 'option')
    years.each do |year|
        if(year.text == '1990')
            year.click
            puts "1990 is selected in year dropdown"
            break
        end
    end
else
    puts "Years select box not displayed"
end

if driver.find_element(:class, '_5k_3').displayed?
    genders = driver.find_elements(:class, '_58mt')
    genders.each do |gender|
        if(gender.text == "Male")
            gender.click
            puts "Male checkbox clicked"
        end
    end
else
    puts "Gender class not displayed"
end
sleep 1

if  driver.find_element(:name, 'websubmit').displayed?
    driver.find_element(:name, 'websubmit').click
    puts "Submit button clicked"
else
    puts "Submit button not displayed"
end
sleep 40

if  driver.find_element(:id, 'reg_error').displayed?
    reg_err_text = driver.find_element(:id, 'reg_error').text
    if(reg_err_text == 'An error occurred. Please try again.')
        puts "error msg displayed correctly"
    else
        puts "error msg not displayed correctly"
    end
else
    puts "error msg not displayed"
end

sleep 5
driver.quit