#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

tail -n +2 "games.csv" | while IFS="," read -r year round winner opponent winner_goals opponent_goals
do
WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$winner') ON CONFLICT (name) DO NOTHING;")
if [[ "$WINNER" == "INSERT 0 1" ]]
then
echo "team inserted: $winner"
fi
OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$opponent') ON CONFLICT (name) DO NOTHING")
if [[ "$OPPONENT" == "INSERT 0 1" ]]
then
echo "team inserted: $opponent"
fi

WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")

OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")
# Insert all values into the games table in one command
RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
VALUES('$year', '$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals)")

if [[ "$RESULT" == "INSERT 0 1" ]]
then
    echo "Game inserted: year=$year, round=$round, winner_goals=$winner_goals, opponent_goals=$opponent_goals"
else
    echo "Failed to insert game: $RESULT"
fi

done
