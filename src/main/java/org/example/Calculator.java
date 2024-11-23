package org.example;

public class Calculator {

    private double add(double a, double b) {
        return a + b;
    }

    private double subtract(double a, double b) {
        return a - b;
    }

    private double multiply(double a, double b) {
        return a * b;
    }

    private double divide(double a, double b) {
        if (b == 0) {
            throw new ArithmeticException("Divide by zero");
        }
        return a / b;
    }

    public double calculate(double operand1, double operand2, String operator) {
        return switch (operator) {
            case "+" -> add(operand1, operand2);
            case "-" -> subtract(operand1, operand2);
            case "*" -> multiply(operand1, operand2);
            case "/" -> divide(operand1, operand2);
            default -> throw new IllegalArgumentException("Unknown operator: " + operator);
        };
    }

}
