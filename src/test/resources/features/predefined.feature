# Exercise for XPath
#Author: Elmira Grigorovich
@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//div[@id='rso']" should contain text "Cucumber"
  @predefined2
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//i[@class='fas fa-search new']"
    Then I wait for element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" to be present
    Then element with xpath "//div[@class='gsc-control-cse gsc-control-cse-en']" should contain text "Cucumber"

  @predefined3
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    Then I wait for element with xpath "//div[@id='links']" to be present
    Then element with xpath "//div[@id='links']" should contain text "Cucumber"

  @predefined4
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com/"
    Then I should see page title as "Swisscows the alternative, data secure search engine."
    Then element with xpath "//input[@class='input-search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@class='input-search']"
    Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Cucumber"

  @predefined5
  Scenario: Predefined steps for SearchEncrypt
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@class='search-bar__search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@class='search-bar__search']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Cucumber"

  @predefined6
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@class='search-form-home__button-desktop']"
    Then I wait for element with xpath "//div[@class='show-results']" to be present
    Then element with xpath "//div[@class='show-results']" should contain text "Cucumber"

  @predefined7
  Scenario: Predefined steps for Yandex
    Given I open url "https://yandex.com/"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//button[@role='button']"
    Then I wait for element with xpath "//ul[@id='search-result']" to be present
    Then element with xpath "//ul[@id='search-result']" should contain text "Cucumber"

  @predefined8
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@type='search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@type='search']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "Cucumber"

  @predefined9
  Scenario: Predefined steps for Wiki
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//input[@type='submit']"
    Then I wait for 2 sec
    Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
    Then I wait for element with xpath "//*[@id='cse']" to be present
    Then element with xpath "//*[@id='cse']" should contain text "Cucumber"

  @predefined10
  Scenario: Predefined steps for Givewater
    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then element with xpath "//input[@id='site-search']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='site-search']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
    Then element with xpath "//div[@class='layout__mainline']" should contain text "Cucumber"

  @predefined11
  Scenario: Predefined steps for Ekoru
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then element with xpath "//input[@id='fld_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='fld_q']"
    Then I click on element using JavaScript with xpath "//div[@id='btn_search']"
    Then I wait for element with xpath "//div[@id='div_results']" to be present
    Then element with xpath "//div[@id='div_results']" should contain text "Cucumber"





  