package org.example;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import static org.junit.Assert.*;

public class CalculatorOperationStepDefinition {
    private double operand1;
    private double operand2;
    private String operator;
    private double result;
    private Exception exception;
    @Given("two operands {double} and {double}")
    public void twoOperandsOperandAndOperand(Double arg0, Double arg1) {
        this.operand1 = arg0;
        this.operand2 = arg1;
    }

    @When("the operation {string} is performed")
    public void theOperationIsPerformed(String arg0) {
        this.operator = arg0;
        Calculator calculator = new Calculator();
        try {
            result = calculator.calculate(operand1, operand2, operator);
        } catch (Exception e) {
            exception = e;
        }
    }

    @Then("the result should be {string}")
    public void theResultShouldBe(String arg0) {
        if ("error".equals(arg0)) {
            assertNotNull(exception);
        } else {
            assertNull(exception);
            assertEquals(Double.parseDouble(arg0), result, 0.0001);
        }
    }
}
