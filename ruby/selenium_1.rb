require "selenium-webdriver"

url = "file:///c:/ruby/web_scraping/html/menu.html"

driver = Selenium::WebDriver.for :chrome
driver.get(url)

sleep 3
driver.quit
