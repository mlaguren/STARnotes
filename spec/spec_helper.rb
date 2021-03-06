require 'yarjuf'
require 'rspec'
require 'selenium-webdriver'

#APP_PATH = '../iOS/STARnote/DerivedData/STARnote/Build/Products/Release-iphonesimulator/STARnote.app'
APP_PATH = '../iOS/STARnote/app_test/STARnote.app'

def absolute_app_path
    file = File.expand_path(APP_PATH, File.dirname(__FILE__))
    raise "App doesn't exist #{file}" unless File.exist? file
    file
end

$capabilities = {
  'browserName' => '',
  'platform' => 'Mac',
  'device' => 'iPhone Simulator',
  'version' => '6.0',
  'app' => absolute_app_path
}

#$server_url = "http://127.0.0.1:4723/wd/hub"
$server_url = "http://0.0.0.0:4723/wd/hub"
