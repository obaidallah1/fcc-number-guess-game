#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$((RANDOM % 1000 + 1))
# echo "$SECRET_NUMBER"

# Function to ask for the username
ASK_USERNAME() {
  echo -e "\nEnter your username:"
  read USERNAME

  USERNAME_LENGTH=${#USERNAME}
  if [[ $USERNAME_LENGTH -gt 22 ]]; then
    echo "Username must be 22 characters or less. Please try again."
    ASK_USERNAME
  fi
}

# Ask for the username
ASK_USERNAME

# Check if the user exists in the database
RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $RETURNING_USER ]]; then
  # Insert new user
  INSERTED_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # Retrieve games played and best game stats
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT COALESCE(MIN(guesses), 0) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  GAMES_LABEL=$(if [[ $GAMES_PLAYED -eq 1 ]]; then echo "game"; else echo "games"; fi)
  GUESSES_LABEL=$(if [[ $BEST_GAME -eq 1 ]]; then echo "guess"; else echo "guesses"; fi)
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
# Grab user_id for later use
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
TRIES=0  # Initialize tries
GUESS=0
# Function for the guessing game
GUESSING_MACHINE() {
  while true; do
    read GUESS
    # Validate guess input
    if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
      echo -e "\nThat is not an integer, guess again:"
      continue
    fi

    TRIES=$((TRIES + 1))  # Increment tries for each valid guess

    if [[ $GUESS -gt $SECRET_NUMBER ]]; then
      echo -e "\nIt's lower than that, guess again:"
    elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
      echo -e "\nIt's higher than that, guess again:"
    else
      break  # Correct guess
    fi
  done
}

# Start the guessing game
echo -e "\nGuess the secret number between 1 and 1000:"
GUESSING_MACHINE

# Insert game data into the database
INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)")
PLURAL_TRIES=$(if [[ $TRIES -eq 1 ]]; then echo "try"; else echo "tries"; fi)

# Output the result
echo -e "\nYou guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
