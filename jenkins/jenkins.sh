cd iOS/STARnote
whoami
xcodebuild -list -workspace ./STARnote.xcodeproj/project.xcworkspace
xcodebuild -workspace ./STARnote.xcodeproj/project.xcworkspace/ -sdk iphonesimulator7.0 -scheme "STARnote" CONFIGURATION_BUILD_DIR='app_test'

cd ../..
pwd
ruby -v
node --version
appium -v
bundle install
bundle exec rspec spec/star_method.rb -f JUnit -o results.xml
