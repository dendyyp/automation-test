#test
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "--window-size=1920,1280" ]
      }
    )
  )
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css
