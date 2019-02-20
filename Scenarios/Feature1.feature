Feature: Creating Shipment with Physical Trades and Successfully generating PASS on Portfolio

  @SmokeTest
  Scenario: Successfull creation of Phycal BUY/SELL Trades and Allocations by Running PASS 
    Given I have launched Risk Manager Application 
    When I created a Real Portfolio on "QA" as "Scenario2" 
    Then I verified the port number for the created Real Portfolio
    When I have Launched Trade Capture application
    Then I created a Physical Buy Trade on Portfolio number "1884430"
    And I verified the Trade number for the saved Physical Buy Trade 
    Then I created a Physcal Fomula Sale Trade
    And I verified the Trade number for the saved Physical sale Trade
    When I have launched Logistics application 
    Then I created the shipment 
    And I verified the generated shipment Ids
    Then I hvae Actualized using BL actuals and verified 
    And I Propagate Actuals and verified the message "Actual is propagated successfully"
    When I have launched Risk Manager Application
    Then I Checked the Position in Portfolio Manager for the created shipments 
    And verified the Positions with corresponding trades from the App inspector/Trade distributions 
    When I have launched the PASS Application
    Then I Run the pass by selecting the tasks compute PL, Price Formula Trade 
    And The PASS run is completed successfully
    When I have launched Risk Manager Application
    Then Verify the PL in Portfolio Report
    And I verified the Position in Portfolio Manager