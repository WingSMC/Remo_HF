# Sample Test Definition Template
# Possible steps:
#		Given
#			a fresh chess clock
#		When / And
#			I press the WHITE button
#			I press the BLACK button
#			I press the START button
#			I press the MOD button
#			I wait for (\d+) ms
#			I wait for (\d+) s
#		Then / And
#			the MAIN display should display the text '(.*)'
#			the WHITE display should display the number (\d+)
#			the BLACK display should display the number (\d+)
#			a BEEP should be made
#			NO BEEP should be made
Feature: Chess clock

  Scenario: Basic test: Pressing each button.
    Given a fresh chess clock
    Then the MAIN display should display the text 'Ready to play'
		 And the WHITE display should display the number 1
		 And the BLACK display should display the number 1
    When I press the BLACK button
     And I press the WHITE button
     And I press the MOD button
     And I press the START button
    Then NO BEEP should be made

  Scenario: Basic test: Waiting for 3 sec.
    Given a fresh chess clock
    When I wait for 3 s
    Then the MAIN display should display the text 'Ready to play'
     And NO BEEP should be made
    
  Scenario: Checking the START/RESET button in the game
    Given a fresh chess clock
    Then the MAIN display should display the text 'Ready to play'
    When I press the START button
    Then the MAIN display should display the text 'White moves'
    When I press the START button
    Then the MAIN display should display the text 'Ready to play'

  Scenario: Example usage for all step definitions
    Given a fresh chess clock
    Then NO BEEP should be made
    When I press the WHITE button
     And I press the BLACK button
     And I press the START button
     And I wait for 1000 ms
     And I press the MOD button
     And I press the START button
     And I wait for 10 s
    Then the MAIN display should display the text 'White moves'
     And the WHITE display should display the number 100
     And the BLACK display should display the number 190
     And a BEEP should be made
