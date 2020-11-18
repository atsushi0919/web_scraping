require "selenium-webdriver"

url = "file:///c:/ruby/web_scraping/html/menu.html"

driver = Selenium::WebDriver.for :chrome
driver.get(url)



# テキストリンクがCoffeeの要素を取得しクリック
text = "Coffee"
element = driver.find_element(:link_text, text)
element.click
sleep 1

# ページ更新
driver.navigate.refresh
sleep 1

# 前へ戻る
driver.navigate.back
sleep 1

# 次に進む
driver.navigate.forward
puts driver.current_url

sleep 3
driver.quit
