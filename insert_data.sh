#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
arr=()
cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR -ne year ]]
  then

    if [[ ! " ${arr[@]} " =~ " ${WINNER} " ]]
    then
      arr+=($WINNER)
      INSRT_TMS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
    fi

    if [[ ! " ${arr[@]} " =~ " ${OPPONENT} " ]]
    then
      arr+=($OPPONENT)
      INSRT_TMS=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
    fi

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

    INSRT_GMS=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR,'$ROUND', $WINNER_ID,$OPPONENT_ID, $WINNER_GOALS,$OPPONENT_GOALS);")
  fi
done