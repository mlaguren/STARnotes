describe "STAR Method Screens" do
  before :all do
    @driver = Selenium::WebDriver.for(:remote, :desired_capabilities => $capabilities, :url => $server_url)
   end

  after :all do
    @driver.quit
  end

  it "can access all the Star Method Screens" do
    button = @driver.find_element(:name, 'Learn')
    button.click
    button = @driver.find_element(:name, 'Task')
    button.click
    button = @driver.find_element(:name, 'Action')
    button.click
    button = @driver.find_element(:name, 'Result')
    button.click
  end


  it "can go back to the main screen" do
    back_button = @driver.find_element(:name, 'Back')
    back_button.click
  end

  it "displays the correct information for the Situation Screen" do
    button = @driver.find_element(:name, 'Learn')
    situation_text = @driver.find_element(:tag_name, :textview)
    p situation_text.methods
  end 

  it "displays the correct_information for the Task Screen" do
    button = @driver.find_element(:name, 'Task')
    task_text = @driver.find_element(:tag_name, :textview)
    p task_text.methods
  end

end
