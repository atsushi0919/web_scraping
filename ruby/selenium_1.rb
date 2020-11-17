require "selenium-webdriver"
#url = "file:///c:/ruby/gyoumu_kaizen/html/menu.html"
url = "https://prochemist.nec.co.jp/ProChemistAS/Login.do"
driver = Selenium::WebDriver.for :chrome
driver.get(url)

# タイトル取得
#puts driver.title
# ソース取得
#puts driver.page_source
# 現在のURL
puts driver.current_url

# タグ名から要素を取得する
tags_td = driver.find_elements(:tag_name, "td")
tags_td.each { |tag| puts tag.text }

#tags_a = driver.find_elements(:tag_name, "a")
#tags_a.each { |tag| puts tag.text }

sleep 3
driver.quit
