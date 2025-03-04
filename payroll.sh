#!/bin/bash

# Define variables
EMPLOYEE_NAME=$1
EMPLOYEE_ID=$2
HOURS_WORKED=$3
HOURLY_WAGE=$4

# Calculate gross pay
GROSS_PAY=$(echo "scale=2; $HOURS_WORKED * $HOURLY_WAGE" | bc)

# Calculate taxes (assuming 25% tax rate)
TAXES=$(echo "scale=2; $GROSS_PAY * 0.25" | bc)

# Calculate net pay
NET_PAY=$(echo "scale=2; $GROSS_PAY - $TAXES" | bc)

# Print payroll information
echo "Employee Name: $EMPLOYEE_NAME"
echo "Employee ID: $EMPLOYEE_ID"
echo "Hours Worked: $HOURS_WORKED"
echo "Hourly Wage: $HOURLY_WAGE"
echo "Gross Pay: $GROSS_PAY"
echo "Taxes: $TAXES"
echo "Net Pay: $NET_PAY"

