#!/bin/bash
#
#
#

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Get the user's username
echo "Enter your username:"
read USERNAME

# Check if the username exists in the database, and
# add the username if not
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

if [[ -z $USER_ID ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME');")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

else
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id=$USER_ID")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID") 

  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
  #     Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.
fi



# Define a random number to be guessed
NUMBER_TO_GUESS=$(( ($RANDOM % 1000) + 1 ))
TRIES=0

# Let the user guess the number
GUESS_FUNCTION() {
  if [[ $1 ]]
  then
    echo $1
  else
    echo "Guess the secret number between 1 and 1000:"
  fi

read ANSWER

if ! [[ $ANSWER =~ ^[0-9]+$ ]]
then
  GUESS_FUNCTION "That is not an integer, guess again:"
fi


TRIES=$(($TRIES + 1))

if [[ $ANSWER != $NUMBER_TO_GUESS ]]
then
  if [[ $ANSWER -gt $NUMBER_TO_GUESS ]]
  then
    GUESS_FUNCTION "It's lower than that, guess again:"
  else
    GUESS_FUNCTION "It's higher than that, guess again:"
  fi
else
  INSERT_GAME_DATA=$($PSQL "INSERT INTO games (user_id, number_of_guesses) VALUES($USER_ID, $TRIES);")
  echo "You guessed it in $TRIES tries. The secret number was $NUMBER_TO_GUESS. Nice job!"
fi
}


GUESS_FUNCTION





