#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~\n"

# 主菜单
MAIN_MENU(){
  if [[ -z $1 ]]
  then
    echo -e "Welcome to My Salon, how can I help you?\n"
  else
    echo -e "$1"
  fi
  ALL_SERVICES=$($PSQL "SELECT * FROM services")
  echo "$ALL_SERVICES" | while read SERVICE_ID BAR NAME
  do
    echo "$SERVICE_ID) $NAME"
  done
  read SERVICE_ID_SELECTED
  SELECT_SERVICE_NAME=$($PSQL "select name from services where service_id=$SERVICE_ID_SELECTED")
  if [[ -z $SELECT_SERVICE_NAME ]]
  then
    # 输入错误id
    MAIN_MENU "\nI could not find that service. What would you like today?"
  else
    # 输入正确id 
    echo -e "\nWhat's your phone number?"
    read CUSTOMER_PHONE
    CUSTOMER_NAME=$($PSQL "select name from customers where phone='$CUSTOMER_PHONE'")
    if [[ -z $CUSTOMER_NAME ]]
    then
      echo -e "\nI don't have a record for that phone number, what's your name?"
      read CUSTOMER_NAME
      # 插入用户,查询用户id
      INSERT_CUSTOMER=$($PSQL "insert into customers(name, phone) values('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
    fi
    CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")
    echo -e "\nWhat time would you like your $SELECT_SERVICE_NAME, $CUSTOMER_NAME?"
    read SERVICE_TIME
    INSERT_APPOINTMENT=$($PSQL "insert into appointments(service_id, customer_id, time) values($SERVICE_ID_SELECTED, $CUSTOMER_ID,'$SERVICE_TIME')")
    echo -e "\nI have put you down for a $SELECT_SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  fi
    # if [[ -z $SELECT_SERVICE_NAME ]]
    # then
    # echo 2
    # else
    #   echo 1
    # fi
}
MAIN_MENU
# # 输入正确的id，询问电话
# What's your phone number?
# 555-555-5555
# # 数据库里面没有，询问名字，存储
# I don't have a record for that phone number, what's your name?
# Fabio
# # 询问预约时间
# What time would you like your cut, Fabio?
# 10:30
# # 预约成功，存储
# I have put you down for a cut at 10:30, Fabio.


# // Next example:

# ~~~~~ MY SALON ~~~~~

# Welcome to My Salon, how can I help you?

# 1) cut
# 2) color
# 3) perm
# 4) style
# 5) trim
# 2

# What's your phone number?
# 555-555-5555

# What time would you like your color, Fabio?
# 11am

# I have put you down for a color at 11am, Fabio.
