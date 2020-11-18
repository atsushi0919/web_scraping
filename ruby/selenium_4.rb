require "selenium-webdriver"

url = "file:///c:/ruby/web_scraping/html/menu.html"

driver = Selenium::WebDriver.for :chrome
driver.get(url)

# h1タグのテキスト
tags_h1 = driver.find_elements(:tag_name, "h1")
tags_h1.each { |tag| puts "h1: " + tag.text }

# aタグのテキストとhref属性の値
tags_a = driver.find_elements(:tag_name, "a")
tags_a.each { |tag| puts tag.text + ": " + tag.attribute("href") }

# ulタグの数 → 1
puts "ulタグの数: " + driver.find_elements(:tag_name, "ul").size.to_s

# liタグの数 → 2
puts "liタグの数: " + driver.find_elements(:tag_name, "li").size.to_s

# ulタグのテキストを取得
puts "ulタグのテキスト: " + driver.find_elements(:tag_name, "ul")[0].text

# aタグ2番目のテキスト1 → Tea
puts "aタグ2番目のテキスト: " + driver.find_elements(:tag_name, "a")[1].text

# aタグ2番目をクリック
sleep 1
driver.find_elements(:tag_name, "a")[1].click
sleep 3
driver.quit
