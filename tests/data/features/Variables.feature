@variable(SomeNumber: 5)
Feature: Test variables in Feature and Scenario context
    In order to demonstrate and test the
    variable feature I write this feature file

    @variable(ExpectedResult: 7)
    Scenario: Add numbers
        Given I have the number ${SomeNumber}
        When I add 2 to my number
        Then I expect the number to be ${ExpectedResult}

    @variable(ExpectedResult: 9)
    Scenario: Add some other numbers
        Given I have the number ${SomeNumber}
        When I add 4 to my number
        Then I expect the number to be ${ExpectedResult}

    @variable(ExpectedResult: ${SomeNumber} + 5)
    Scenario: Add some other numbers with variables
        Given I have the number ${SomeNumber}
        When I add 5 to my number
        Then I expect the number to be ${ExpectedResult}
