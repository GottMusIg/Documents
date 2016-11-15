Feature: DpsDifference

	as a user
    I want to see the DPS Difference of all classes when i enter the homepage of GottMusIg

Scenario: DPS-Calculation available in database

	Given I enter the homepage
	When dps-calculation available in database
	Then I see the start page with the dps diagram
	
Scenario: Dps-Calculation not available in database
	
	Given I enter the homepage
	When dps-calculation not available in database
	And mockup characters were loaded
	And Best equipment is already available in database
	Then Calculate DPS for every mockup character and save the result in database and return startpage with the dps diagram
