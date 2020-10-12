Given(/^Home page of Opencart$/) do
  $driver.goto("http://10.207.182.108:81/opencart/")
end
And(/^I click on the MyAccount Dropdown Button$/) do
  $driver.link(:xpath=>"//*[@id='top-links']//ul//li[2]//a").click
end
Then(/^I click the Register link from the MyAccount dropdown$/) do
  $driver.link(:xpath=>"//*[@id=\'top-links\']/ul/li[2]/ul/li[1]/a").click
end

And(/^I passed "([^"]*)" first name$/) do |arg|
  $driver.text_field(:name=>"firstname").set arg
end

And(/^I passed "([^"]*)" second name$/) do |arg|
  $driver.text_field(:name=>"lastname").set arg
end

And(/^I Passed "([^"]*)" email$/) do |arg|
  $driver.text_field(:name=>"email").set arg
end

And(/^I passed "([^"]*)" telephone number$/) do |arg|
  $driver.text_field(:name=>"telephone").set arg
end

And(/^I passed password "([^"]*)" to password field$/) do |arg|
  $driver.text_field(:name=>"password").set arg
end

And(/^I confirmed password at "([^"]*)" confirm password field$/) do |arg|
  $driver.text_field(:name=>"confirm").set arg
end

And(/^I click on the "([^"]*)" on privacy policy$/) do |arg|
  $driver.checkbox(:name=>"agree").set arg
end


And(/^I clicked on the continue button$/) do
  $driver.button(:value=>"Continue").click
end


Then(/^I clicked on the contact Link$/) do
  $driver.link(:xpath=>"//*[@id=\"content\"]/p[4]/a").click
end

And(/^filled enquire textbox "([^"]*)"$/) do |arg|
  $driver.textarea(:name=>"enquiry").set arg
end

Then(/^I clicked on submit button$/) do
  $driver.button(:value=>"Submit").click
end

And(/^I clicked on Continue in contact Us Page$/) do
  $driver.link(:xpath=>"//*[@id=\"content\"]/div/div/a").click
end

Then(/^I clicked the Samsung Galaxy Tab on home page$/) do
  $driver.link(:xpath=> "//*[@id=\"menu\"]/div[2]/ul/li[4]/a").click

  $driver.img(:xpath=>"//*[@id=\"content\"]/div[2]/div/div/div[2]/div[1]/h4/a").click
end

And(/^I clicked on the Review Tab$/) do
  $driver.link(:href=>"#tab-review").click
end

And(/^I wrote the review of the tab (.*)$/) do |review|
  $driver.textarea(:id=>"input-review").set review
end

And(/^I clicked on the rating 4$/) do
  $driver.radio(:value=>"4").click
end

And(/^I clicked on review submit button$/) do
  $driver.button(:id=>"button-review").click
end

Then(/^I click on wishlist$/) do
  $driver.button(:xpath=> "//*[@id='content']/div/div[2]/div[1]/button[1]").click
end

And(/^I close the success message$/) do
 $driver.button(:xpath=> "//*[@id='product-product']/div[1]/button").click
end


And(/^I clicked on wishlist link$/) do
  $driver.link(:xpath=>"//*[@id=\"content\"]/div/div[2]/div[1]/button[1]/i").click

end

Then(/^I clicked on the Pound Sterling and checked the value displayed properly or not$/) do
  $driver.button(:class=>"btn btn-link dropdown-toggle").click
  $driver.button(:name=>"GBP").click
  puts $driver.div(:class=>"price").text

end

Then(/^I clicked on the Euro and checked the value displayed properly or not$/) do
  $driver.button(:class=>"btn btn-link dropdown-toggle").click
  $driver.button(:name=>"EUR").click
  puts $driver.div(:class=>"price").text

end

Then(/^I clicked on the dollar and checked the value displayed properly or not$/) do
  $driver.button(:class=>"btn btn-link dropdown-toggle").click
  $driver.button(:name=>"USD").click
  puts $driver.div(:class=>"price").text

end

Then(/^I clicked on Add To cart button$/) do
  $driver.button(:class=>"btn btn-primary").click
end

And(/^I close Success message$/) do
  $driver.button(:class=>"close").click
end

Then(/^I removed the content from wishlist$/) do
  $driver.link(:xpath=>"//*[@id=\"content\"]/div[1]/table/tbody/tr/td[6]/a/i").click
end


And(/^I clicked on the continue$/) do
  $driver.link(:href=>"http://spezicoe.wipro.com:81/opencart/index.php?route=account/account").click
end

And(/^I clicked the logout button$/) do

  $driver.link(:xpath=>"//*[@id=\"column-right\"]/div/a[13]").click
end
