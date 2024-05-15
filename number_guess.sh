#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
NUMBER=$(($RANDOM%1000+1))
NUMBER_OF_GUESSES=0
echo "Enter your username:"
read USER_NAME
# if [ $(echo -n $USER_NAME | wc -c) -le 22 ]
if [ $USER_NAME ]
then
  # 小于22个字节的用户名
  # 判断用户名是否已存在
  USER_ID=$($PSQL "select user_id from user_info where user_name='$USER_NAME'")
  if [ -z $USER_ID ]
  then
    #不存在，则返回 用户名
    $PSQL "insert into user_info(user_name) values('$USER_NAME')"
    USER_ID=$($PSQL "select user_id from user_info where user_name='$USER_NAME'")
    echo "Welcome, $USER_NAME! It looks like this is your first time here."
  else
    #todo 已存在则 返回 用户名，play次数，赢得比赛的最少次数
    echo $($PSQL "select count(*), min(number_of_guesses) from game_info where user_id=$USER_ID") | while IFS="|" read COUNT BEST_GAME
    do
      echo "Welcome back, $USER_NAME! You have played $COUNT games, and your best game took $BEST_GAME guesses."
    done
  fi

  #开始游戏
  GAME(){
    NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES+1))
    if [ -z "$1" ]
    then
      echo "Guess the secret number between 1 and 1000:"
    else
      echo "$1"
    fi

    read USER_NUMBER
    if [[ $USER_NUMBER =~ ^[0-9]+$ ]]
    then
      if [ $USER_NUMBER -lt $NUMBER ]
      then
        GAME "It's lower than that, guess again:"
      elif [ $USER_NUMBER -gt $NUMBER ]
      then
        GAME "It's higher than that, guess again:"
      else
        # 插入本次游戏结果
        INSERT_NUMBER_OF_GUESSES=$($PSQL "INSERT INTO game_info(user_id, number_of_guesses) values($USER_ID, $NUMBER_OF_GUESSES)")
        echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $NUMBER. Nice job!"
      fi
    else
      GAME "That is not an integer, guess again:"
    fi
  }
  GAME
fi