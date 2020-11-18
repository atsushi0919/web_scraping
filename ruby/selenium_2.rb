require "selenium-webdriver"

url = "file:///c:/ruby/web_scraping/html/menu.html"

# オプション 指定
# '--headless'  headlessモード 画面表示なしで動作するモード
# '--incognito' シークレットモード
# '--window-size' ウィンドウサイズの指定 [例]options.add_argument('--window-size=800,500')
# '--user-agent'  ユーザーエージェントの指定 [例]options.add_argument('--user-agent=Mozilla/5.0 ~ (略) ~')

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--incognito')
options.add_argument('--window-size=500,300')

# オプション を 渡す
driver = Selenium::WebDriver.for :chrome, options: options
driver.get(url)

sleep 3
driver.quit
