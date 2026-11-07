#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only --no-align --quiet -c"

SECRET_NUMBER=$(( RANDOM % 1000 +1 ))

enter_user() {
  echo "Enter your username:"
  read username

  USER_EXISTS=$($PSQL "SELECT username FROM players WHERE username='$username'")
  if [[ -z $USER_EXISTS ]]
  then
    echo "Welcome, $username! It looks like this is your first time here."
    $PSQL "INSERT INTO players(username) VALUES('$username')"
  else
    PLAYER_ID=$($PSQL "SELECT user_id FROM players WHERE username='$username'")
    GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$PLAYER_ID")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$PLAYER_ID")
    echo "Welcome back, $username! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
}

game_logic() {
  echo "Guess the secret number between 1 and 1000:"
  read guess

  COUNT=0

  while true
  do
    ((COUNT++))

    if ! [[ $guess =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read guess
      continue
    fi

    #((COUNT++))

    if [[ $guess -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $guess -lt $SECRET_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      break
    fi

    read guess
  done

  echo "You guessed it in $COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
  PLAYER_ID=$($PSQL "SELECT user_id FROM players WHERE username='$username'")
  $PSQL "INSERT INTO games(user_id, guesses) VALUES($PLAYER_ID, $COUNT)"
}

enter_user
game_logic