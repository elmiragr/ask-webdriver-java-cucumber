# Exercize for Quote application
  # Epic: https://jira.portnov.com/browse/ACA-674
  # Author: Elmira Grigorovich
  @quote
  Feature: Quote page
    Background:
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
    @quote1
    Scenario: Validate responsive UI behavior
      # resize to desktop size
      When I resize window to 1920 and 1080
      Then I wait for 5 sec
      Then element with xpath "//b[@id='location']" should be displayed
      # resize to laptop size
      When I resize window to 1440 and 900
      Then I wait for 5 sec
      Then element with xpath "//b[@id='location']" should be displayed
      # resize to mobile size
      When I resize window to 375 and 851
      Then I wait for 5 sec
      Then element with xpath "//b[@id='location']" should not be displayed

    @quote2
    Scenario: Validate minimal “Username” field length requirement as 2 characters
      When I type "A" into element with xpath "//input[@name='username']"
      Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should be displayed
      Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
      Then I clear element with xpath "//input[@name='username']"
      Then I type "QA" into element with xpath "//input[@name='username']"
      Then I wait for 3 sec
      Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should not be displayed
      Then I clear element with xpath "//input[@name='username']"
      Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should be displayed
      And element with xpath "//label[@id='username-error']" should contain text "This field is required."

    @quote3
    Scenario: Validate ”Email” field behavior Validate that email field accepts only valid email addresses.
       # Validation with invalid email
      When I type "ABC" into element with xpath "//input[@name='email']"
      Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='email-error']" should be displayed
      Then element with xpath "//label[@id='email-error']" should contain text "Please enter a valid email address."
       # Validation with valid email
      Then I clear element with xpath "//input[@name='email']"
      Then I type "Abc@abc.com" into element with xpath "//input[@name='email']"
      Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='email-error']" should not be displayed

    @quote4
    Scenario: Fill out and validate “Password” set of fields. Validate that Confirm Password is disabled if Password field is empty.
      # Validating that confirm password is disabled
      Then element with xpath "//input[@id='confirmPassword']" should be disabled
      #Validating lenght of password field
      When I type "abcd" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//input[@id='confirmPassword']"
      And I wait for 2 sec
      Then element with xpath "//label[@id='password-error']" should contain text "Please enter at least 5 characters."
      When I clear element with xpath "//input[@id='password']"
      When I type "abcd123" into element with xpath "//input[@id='password']"
      And I click on element with xpath "//input[@id='confirmPassword']"
      And I wait for 2 sec
      Then element with xpath "//label[@id='password-error']" should not be displayed
      #Validating password and confirmed password are matched
      When I type "abcd123" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//input[@id='confirmPassword']"
      Then I type "abcd1" into element with xpath "//input[@id='confirmPassword']"
      And I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='confirmPassword-error']" should contain text "Passwords do not match!"
      Then I clear element with xpath "//input[@id='confirmPassword']"
      Then I type "abcd123" into element with xpath "//input[@id='confirmPassword']"
      And I click on element using JavaScript with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='password-error']" should not be displayed

    @quote5
    Scenario: Validate “Name” field behavior Modal dialog: verify that upon clicking inside of Name field popup dialog appears.
    Name concatenation: verify that after putting First Name, Middle Name, Last Name, it concatenates it correctly and puts the value in the Name field
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
      Then I type "Elmira" into element with xpath "//input[@id='firstName']"
      Then I type "Qa" into element with xpath "//input[@id='middleName']"
      Then I type "Grigorovich" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Elmira Qa Grigorovich"

    @quote6
    Scenario: Validate that Accepting Privacy Policy is required to submit the form, then check the field
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
      And element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should contain text "- Must check!"
      Then I wait for 3 sec
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed

    @quote7
    Scenario: Submit the form and verify the data. Validate that after form submission entered fields values are present on the page. Validate that password is not displayed on the page
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
      Then I type "Elmira" into element with xpath "//input[@id='firstName']"
      Then I type "Qa" into element with xpath "//input[@id='middleName']"
      Then I type "Grigorovich" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Elmira Qa Grigorovich"
      Then I type "Elmira" into element with xpath "//input[@name='username']"
      Then I type "abc@abc.com" into element with xpath "//input[@name='email']"
      Then I type "abcd123" into element with xpath "//input[@id='password']"
      Then I type "abcd123" into element with xpath "//input[@id='confirmPassword']"
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then I should see page title as "Get a Quote"
      And I wait for 3 sec
      And element with xpath "//b[@name='name']" should contain text "Elmira Qa Grigorovich"
      And element with xpath "//b[@name='email']" should contain text "abc@abc.com"
      And element with xpath "//b[@name='password']" should contain text "[entered]"
      And element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"

    @quote8
    Scenario: Submit the form with entering non-required fields.
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//div[@aria-describedby='nameDialog']" should be displayed
      Then I type "Elmira" into element with xpath "//input[@id='firstName']"
      Then I type "Qa" into element with xpath "//input[@id='middleName']"
      Then I type "Grigorovich" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "Elmira Qa Grigorovich"
      Then I type "Elmira" into element with xpath "//input[@name='username']"
      Then I type "abc@abc.com" into element with xpath "//input[@name='email']"
      Then I type "abcd123" into element with xpath "//input[@id='password']"
      Then I type "abcd123" into element with xpath "//input[@id='confirmPassword']"
      Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
      Then I type "123456789" into element with xpath "//input[@name='phone']"
      Then I click on element with xpath "//option[contains(text(),'Canada')]"
      Then I click on element with xpath "//span[contains(text(),'Female')]"
      Then I click on element with xpath "//input[@name='allowedToContact']"
      Then I type "111 Main street" into element with xpath "//textarea[@id='address']"
      Then I click on element with xpath "//option[contains(text(),'Toyota')]"
      Then I click on element with xpath "//button[@id='thirdPartyButton']"
      And I accept alert
      Then I click on element with xpath "//input[@id='dateOfBirth']"
      Then I click on element with xpath "//option[contains(text(),'2000')]"
      Then I click on element with xpath "//option[contains(text(),'Jun')]"
      Then I click on element with xpath "//a[contains(text(),'10')]"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then I should see page title as "Get a Quote"
      And element with xpath "//b[@name='name']" should contain text "Elmira Qa Grigorovich"
      And element with xpath "//b[@name='email']" should contain text "abc@abc.com"
      And element with xpath "//b[@name='password']" should contain text "[entered]"
      And element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
      And element with xpath "//b[@name='allowedToContact']" should contain text "true"
      And element with xpath "//b[@name='agreedToPrivacyPolicy']" should contain text "true"
      And element with xpath "//b[@name='thirdPartyAgreement']" should contain text "accepted"
      And I wait for 4 sec
      And element with xpath "//b[@name='dateOfBirth']" should contain text "06/10/2000"
      And element with xpath "//b[@name='address']" should contain text "111 Main street"
      And element with xpath "//b[@name='phone']" should contain text "123456789"
      And element with xpath "//b[@name='countryOfOrigin']" should contain text "Canada"
      And element with xpath "//b[@name='carMake']" should contain text "Toyota"
      






      











      



















