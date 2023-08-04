Feature:

  @test1
  Scenario:
    When user enters "wooden spoon" in search field
    Then user clicks on search icon
    And  user verify result contain wooden spoon

    @test2
    Scenario: Searching for empty text

      When user enters " " in search field
      And user clicks on search icon
      Then verify "All categories" is displayed
      And verify "Find what you love" is displayed




      @test4
      Scenario:Dropdown
        When user enters "table" in search field
        Then verify suggestion dropdown is displayed
        And verify search dropdown contains table


        Scenario: Autocomplete
          When users enters first letter in search field
          Then verify autocomplete dropdown is displayed
          And verify search dropdown contains first letter suggestion

          Scenario: clear icon
            When user enters a word on search field
            Then verify clear icon is displayed
            And verify search field is empty once user clicks on clear icon


