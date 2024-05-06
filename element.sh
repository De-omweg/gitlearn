#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if [[ -z $1 ]]
then
  echo Please provide an element as an argument.
else
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    SELECT_RESULT=$($PSQL "select * from elements where atomic_number=$1")
  else
    SELECT_RESULT=$($PSQL "select * from elements where symbol='$1' or name='$1'")
  fi
  echo "$SELECT_RESULT" | while read ATOMIC_NUMBER BAR SYMBOL BAR NAME
  do
    if [[ -z $ATOMIC_NUMBER ]]
    then
      echo "I could not find that element in the database."
    else
      echo "$($PSQL "select type, atomic_mass, melting_point_celsius, boiling_point_celsius from properties left join types using(type_id) where atomic_number=$ATOMIC_NUMBER")" | while read TYPE BAR ATOMIC_MASS BAR MELTING_POINT_CELSIUS BAR BOILING_POINT_CELSIUS
      do
        echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius." 
      done
    fi
  done
fi
