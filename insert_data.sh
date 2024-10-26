#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi


# Do not change code above this line. Use the PSQL variable above to query your database.
#reset everything
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
  if [[ $WINNER != 'winner' ]]
  then
    #get teams name from winner
    GET_TEAM_WIN=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    
    #if team name not found
    if [[ -z $GET_TEAM_WIN ]]
    then
      #insert team name
      INSERT_TEAM_WIN=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM_WIN == "INSERT 0 1" ]]
      then
        echo "Inserted into team name: $WINNER"
      fi
    fi
  fi

  if [[ $OPPONENT != 'opponent' ]]
  then
    #get teams name from opponent
    GET_TEAM_OPP=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    
    #if team name not found
    if [[ -z $GET_TEAM_OPP ]]
    then
      #insert team name
      INSERT_TEAM_OPP=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAM_OPP == "INSERT 0 1" ]]
      then
        echo "Inserted into team name: $OPPONENT"
      fi
    fi
  fi

  if [[ $YEAR!='year' && $ROUND!='round' && $WINNER_GOALS!='winner_goals' && $OPPONENT_GOALS!='opponent_goals' ]]
  then
    #get opponent id from teams table
    GET_OPP_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")

    #get winner id from teams table
    GET_WIN_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER'")
    
    #insert information to games
    INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, opponent_goals, winner_goals) VALUES($YEAR,'$ROUND', $GET_WIN_ID, $GET_OPP_ID, $OPPONENT_GOALS, $WINNER_GOALS)")
    if [[ $INSERT_GAME == "INSERT 0 1" ]]
    then
      echo -e "\nInserted into game!!\nYear: $YEAR\nRound: $ROUND\nOpponent goals: $OPPONENT_GOALS\nWinner goals: $WINNER_GOALS\n"
    fi
  fi
done
