#!/bin/bash

# Base URL for the API
BASE_URL="http://localhost:3000"

# Signup request
echo "Testing Signup..."
signup_response=$(curl -s -X POST $BASE_URL/auth/signup \
  -H "Content-Type: application/json" \
  -d '{
    "username": "testuser",
    "email": "testuser@example.com",
    "password": "password123"
  }')
echo $signup_response
echo

# Login request
echo "Testing Login..."
login_response=$(curl -s -X POST $BASE_URL/auth/login \
  -H "Content-Type: application/json" \
  -d '{
    "username": "testuser",
    "password": "password123"
  }')
echo $login_response
echo

# You can add more tests here