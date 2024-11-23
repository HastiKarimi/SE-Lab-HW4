package org.example;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CalculatorOperationStepDefinition {
    @Given("two operands {double} and {double}")
    public void twoOperandsOperandAndOperand(Double arg0, Double arg1) {
        System.out.println("Salam");
    }

    @When("the operation {string} is performed")
    public void theOperationIsPerformed(String arg0) {
        System.out.println("Salam");
    }

    @Then("the result should be {string}")
    public void theResultShouldBe(String arg0) {
        System.out.println("Salam");
    }
}
