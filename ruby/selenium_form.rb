require "selenium-webdriver"

url = "file:///c:/ruby/web_scraping/html/coffee.html"

driver = Selenium::WebDriver.for :chrome
driver.get(url)

# プルダウン要素からSelectインスタンスを取得 <select name="num">
element = driver.find_element(:name, "num")
select_num = Selenium::WebDriver::Support::Select.new(element)
# select_byメソッドで操作(value属性値の例)
select_num.select_by(:value, "2")
sleep 1

# ラジオボタン操作: Xpathで指定する例
element = driver.find_element(:xpath, "/html/body/form/input[1]")
element.click
sleep 1

# ラジオボタン操作: CSSセレクタから要素を取得(input[name='hotice'][value='ice']でもOK)
element = driver.find_element(:css, "input[type=radio][value='ice']")
element.click
sleep 1

# ラジオボタン操作: selected?で判定
element = driver.find_element(:css, "input[type=radio][value='hot']")
p element.selected?
sleep 1

# チェックボックス操作: 基本的にラジオボタンと一緒
# <input type=checkbox name="included" value="sugar">砂糖
# <input type=checkbox name="included" value="milk">ミルク
# <input type=checkbox name="included" value="cream">生クリーム

chk_sugar = driver.find_element(:css, "input[name='included'][value='sugar']")
chk_milk = driver.find_element(:css, "input[name='included'][value='milk']")
chk_cream = driver.find_element(:css, "input[name='included'][value='cream']")

chk_sugar.click
sleep 1
chk_cream.click
sleep 1

p chk_milk.selected?  # false
p chk_cream.selected? # true

# テキストを入力する
msg = "氷なしでお願いします"
element = driver.find_element(:name, "remarks")
element.send_keys(msg)
sleep 1

# テキストクリア
#element.clear

# 送信/リセットのクリック
# 送信
element = driver.find_element(:css, "input[type='submit']")
# リセット
# element = driver.find_element(:css, "input[type='reset']")
element.click
sleep 1

# 送信がクリックされたときに、確認ダイアログが出るのでOK/Cancel
# <form method="POST" action="complete.html" onsubmit="return confirm('注文しますか？');"></form>

# acceptメソッドでOK押下
driver.switch_to.alert.accept
# dismissでCancel
# driver.switch_toalert.dismiss

sleep 1
driver.quit
