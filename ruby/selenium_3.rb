require "selenium-webdriver"

url = "file:///c:/ruby/web_scraping/html/menu.html"

driver = Selenium::WebDriver.for :chrome
driver.get(url)

# タイトル取得
puts driver.title

# ソース取得
puts driver.page_source

# 現在のURL
puts driver.current_url

sleep 3
driver.quit
