#!/bin/bash

# Simple Calculator Script with User Interaction

echo "Welcome to the Simple Calculator!"
echo "Please select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

echo "साधा गणकयंत्र!"
echo "कृपया एक क्रिया निवडा:"
echo "१. बेरीज"
echo "२. वजाबाकी"
echo "३. गुणाकार"
echo "४. भागाकार"

echo "सरल कैलकुलेटर में आपका स्वागत है!"
echo "कृपया एक क्रिया चुनें:"
echo "1. जोड़"
echo "2. घटाना"
echo "3. गुणा"
echo "4. विभाजन"


read -p "Enter your choice (1-4): " operation

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

case $operation in
    1)
        result=$(echo "$num1 + $num2" | bc)
        echo "Result: $num1 + $num2 = $result"
        ;;
    2)
        result=$(echo "$num1 - $num2" | bc)
        echo "Result: $num1 - $num2 = $result"
        ;;
    3)
        result=$(echo "$num1 * $num2" | bc)
        echo "Result: $num1 * $num2 = $result"
        ;;
    4)
        if [ $num2 -ne 0 ]; then
            result=$(echo "scale=2; $num1 / $num2" | bc)
            echo "Result: $num1 / $num2 = $result"
        else
            echo "Error: Division by zero is not allowed."
        fi
        ;;
    *)
        echo "Invalid option selected!"
        ;;
esac
