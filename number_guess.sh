#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# get username
echo "Enter your username:"
read NAME

# is username already in the database?
USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name ='$NAME'")

# user already in the database
if [[ $USER_ID ]]
  then
    # get games played
    GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id='$USER_ID'")

    # get best game
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id='$USER_ID'")

    # greet existing user
    echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

# user is not in the database
  else
    # great new user
    echo "Welcome, $NAME! It looks like this is your first time here."

    # insert user in the database
    INSERT_CUSTOMER_NAME=$($PSQL "INSERT INTO users(user_name) VALUES('$NAME')")

    # get new user's user id
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE user_name ='$NAME'")
fi 

# generate random number between 1 and 1000
NUMBER=$(( RANDOM % 1000 + 1 ))

# ask for a guess
echo "Guess the secret number between 1 and 1000:"
read INPUT

# variable to be incremented with each guess
INPUT_COUNT=1

# while guessed number doesn't equal the generated number do this loop
while [[ $INPUT -ne $NUMBER ]]
  do
    # check if input is an integer
    while [[ ! $INPUT =~ ^[0-9]+$ ]]
      do
        echo "That is not an integer, guess again:"
        read INPUT
      done

    # input is higher that the secret number
    if [[ $INPUT > $NUMBER ]]
      then
        echo "It's lower than that, guess again:"
      else
    # if the input is lower that the secret number
        echo "It's higher than that, guess again:"
    fi
  
    #read new guess
    read INPUT

    # increment input count variable
    (( INPUT_COUNT++ ))

  done 

# the guessed number equals the secret number
echo "You guessed it in $INPUT_COUNT tries. The secret number was $NUMBER. Nice job!"

# insert this game in the database
INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES('$USER_ID', '$INPUT_COUNT')")

exit