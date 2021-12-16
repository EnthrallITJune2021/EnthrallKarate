@reqRes_user
Feature: Validation of user from reqres
  Validating list of user and single user from reqres

	Background:
		* def reqResUrl = 'https://reqres.in/'
		* url reqResUrl

  @smoke
  Scenario: get user list
    Given path '/api/users?page=2'
   	# And request {}
    When method Get
		Then status 200
		And match response.total_pages == 2
		And match $..total == [12]
		
	Scenario: get single user
		Given path '/api/users/2'
		When method Get
		Then status 200
		
	@ui_chrome
	Scenario: UI Automation Chrome
		* configure driver = {type:'chrome'}
		Given driver 'https://www.youtube.com/'
		When driver.quit()
		
	@ui
	Scenario: UI Automation Mozilla
		* configure driver = {type:'geckodriver', executable:"#('C:/Users/mdnas/eclipse-workspace/com.enthrall.karate/drivers/geckodriver.exe')"}
		Given driver 'https://www.youtube.com/'
		* maximize()
		* waitFor("input[id='search']")
		* input("input[id='search']", 'National News')
		* def locator = "button[id='search-icon-legacy']"
		* waitFor(locator)
		* click(locator)
		* def sleep = function(millis){ java.lang.Thread.sleep(millis) }
		* sleep(3000)