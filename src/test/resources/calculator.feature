@calculator
Feature: Calculator operations

  Scenario Outline: Perform mathematical operations
    Given two operands <operand1> and <operand2>
    When the operation "<operator>" is performed
    Then the result should be "<result>"

    Examples:
      | operand1 | operand2 | operator | result |
      | 1.0      | 2.0      | /        | 0.5    |
      | 0.25     | 0.5      | *        | 0.125  |
      | 4.0      | 2.0      | /        | 2.0    |
      | 0.5      | 0.25     | +        | 0.75   |
      | 2.0      | 4.0      | /        | 0.5    |
      | 1.0      | 1.0      | *        | 1.0    |
      | 0.75     | 0.25     | +        | 1.0    |
      | 3.0      | 6.0      | /        | 0.5    |
      | 0.5      | 0.5      | *        | 0.25   |
      | 5.0      | 2.5      | /        | 2.0    |
      | 0.1      | 0.2      | *        | 0.02   |
      | 8.0      | 2.0      | /        | 4.0    |
      | 2.0      | 0.5      | *        | 1.0    |
      | 6.0      | 3.0      | /        | 2.0    |
      | 0.25     | 0.25     | +        | 0.5    |
      | 10.0     | 2.5      | /        | 4.0    |
      | 0.5      | 0.1      | *        | 0.05   |
      | 1.5      | 0.5      | +        | 2.0    |
      | 12.0     | 6.0      | /        | 2.0    |
      | 0.4      | 0.2      | *        | 0.08   |
      | 0.6      | 0.3      | /        | 2.0    |
      | 0.75     | 0.25     | -        | 0.5    |
      | 0.2      | 0.5      | *        | 0.1    |
      | 16.0     | 8.0      | /        | 2.0    |
      | 0.5      | 0.5      | +        | 1.0    |
      | 2.5      | 1.25     | /        | 2.0    |
      | 0.25     | 0.25     | *        | 0.0625 |
      | 4.0      | 0.5      | *        | 2.0    |
      | 20.0     | 5.0      | /        | 4.0    |
      | 0.5      | 0.25     | -        | 0.25   |
      | 6.0      | 1.5      | /        | 4.0    |
      | 0.8      | 0.4      | *        | 0.32   |
      | 3.0      | 1.5      | /        | 2.0    |
      | 0.25     | 0.1      | +        | 0.35   |
      | 0.6      | 0.3      | /        | 2.0    |
      | 2.5      | 0.5      | *        | 1.25   |
      | 1.0      | 0.5      | /        | 2.0    |
      | 9.0      | 3.0      | /        | 3.0    |
      | 0.75     | 0.25     | /        | 3.0    |
      | 4.0      | 2.0      | *        | 8.0    |
      | 0.5      | 0.1      | +        | 0.6    |
      | 0.4      | 0.2      | /        | 2.0    |
      | 10.0     | 2.0      | *        | 20.0   |
      | 0.5      | 0.2      | -        | 0.3    |
      | 8.0      | 4.0      | /        | 2.0    |
      | 0.25     | 0.1      | *        | 0.025  |
      | 6.0      | 3.0      | /        | 2.0    |
      | 5.0      | 2.0      | *        | 10.0   |
      | 0.75     | 0.25     | *        | 0.1875 |
      | 2.5      | 1.25     | *        | 3.125  |
      | 10.0     | 0        | /        | error  |
      | 2.5      | 0        | /        | error  |