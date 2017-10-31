#language:en
# encoding: iso-8859-1
Feature: Validate Input Form
	@SC1
	Scenario: Include Register Male successfuly
		Given User in Form Website for input Male Register
		When User input personal form data for input Male Register
		And User click on button Submit for input Male Register
		Then Insert the new user information for input Male Register
	@SC2
	Scenario: Include Register Female successfuly
		Given User in Form Website for input Female Register
		When User input personal form data for input Female Register
		And User click on button Submit for input Female Register
		Then Insert the new user information for input Female Register
	@SC3
	Scenario: Validate required fields to complete input form data
		Given User in Form Website for validate required Fields
		When User dont fill any field
		And User click on Submit Button without fill fields
		Then The system must be show a feedback to user about the fields not fill