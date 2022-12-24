#!/bin/bash
# Write a script called mycase, using the case utility to checks the type of character
# entered by a user:
# a. Upper Case.
# b. Lower Case.
# c. Number.
# d. Nothing
# case $1 in
# @([a-z]))
# echo "lower case"
# ;;
# @([A-Z]) )
# echo "“ upper case “"
# ;;
# @([0-9]) )
# echo "“ integer “ "
# ;;
# *)
# echo "nothing"
# ;;
# esac
#________________________________________________
#______________________Question 2________________
# Enhanced the previous script, by checking the type of string entered by a user:
# a. Upper Cases.
# b. Lower Cases.
# c. Numbers.
# d. Mix.
# e. Nothing
#!/bin/bash
# echo $1
# if [[ $1 =~ ^[0-9]+$ ]]; 
# then
#     echo "integer"
# elif [[ $1 =~ ^[a-z]+$ ]]; 
# then
#     echo "small"
# elif [[ $1 =~ ^[A-Z]+$ ]]; # + for one or more , $ for 
# then
#     echo "Capital"
# else
#     echo "nothing"
# fi
# if the input is combination of letters and numbers
# echo $1
# if [[ $1 =~ [0-9] ]]; 
# then
#     echo "number"
# fi
# if [[ $1 =~ [a-z] ]]; 
# then
#     echo "small"
# fi
# if [[ $1 =~ [A-Z] ]]; 
# then
#     echo "Capital"
# else
#     echo "nothing"
# fi
# ________________________________________________
#______________________Question 3________________
# Write a script called mychmod using for utility to give execute permission to all files and
# directories in your home directory.
# sudo chmod -R +x ~/*
# ls -la ~
# ________________________________________________
#______________________Question 4________________
# Write a script called mybackup using for utility to create a backup of only files in your
# home directory.
# find ~ -maxdepth 1 -type f -exec cp {} ~/backup/ \;
#https://stackoverflow.com/questions/5241625/find-and-copy-files
# ________________________________________________
#______________________Question 5________________
# Write a script called mymail using for utility to send a mail to all users in the system.
# Note: write the mail body in a file called mtemplate. 
# wall msg.txt
# ________________________________________________
#______________________Question 6________________
# Write a script called chkmail to check for new mails every 10 seconds. Note: mails are
# saved in /var/mail/username
# Username=arwaahmed
# lines=`cat /var/mail/$Username| wc -l`
# typeset -i check
# ((check=lines+1))
# if [ $lines -gt $check ]; then
# echo "you have recieved new mail!!"
# fi
########### Bonus #######################
# Open a talk session to a certain user when she/he logs into the system
########### Bonus #######################
# now=`date +"%H:%M"`
# logged_user=`w | awk '{print $1}' | head -1` # time the user logged
# NameUser=`w | awk '{print $1}' | tail -1`# name of the logged user
# if [ "$now" -eq "$logged_user"]; then
# echo " hello $NameUser, How are you?"
# read x
# echo $x
# fi
# ________________________________________________
#______________________Question 7________________

# typeset –i n1=1
# typeset –i n2=1
# n1=1
# n2=1
# let n1=1
# let n2=1
# while test $n1=$n2 # cannot put -eq
# do
#     n2=$n2+1
#     echo ARWA
#     echo $n1
#     if (( $n1 > $n2 ))
#     then
#         break 
#     else
#         continue
#     fi
#     n1=$n1+1
#     echo hello
#     echo $n2
# done

# ________________________________________________
#______________________Question 8________________
# Create the following menu:
# a. Press 1 to ls
# b. Press 2 to ls –a
# c. Press 3 to exit
# Using select utility then while utility
# select choice in "ls" "ls -a" "exit"
# do
#     case $REPLY in
#         1) ls
#         ;;
#         2) ls -a
#         ;;
#         3) exit 0
#         ;;
#         *) print $REPLY is not one of the choices.
#         ;;
#     esac
# done
# ________________________________________________
#______________________Question 9________________
# Write a script called myarr that ask a user how many elements he wants to enter in an
# array, fill the array and then print it.

# echo "size of your array is ?"
# read n
# END=n
# for ((i=1;i<=END;i++)); do
# # do
# echo "enter value of $i element in array"
# read val
# myArray[$i-1]=$val
# done

# for ((i=1;i<=END;i++)); do
#   echo "element $i is ${myArray[i-1]}"
# done
# ________________________________________________
#______________________Question 10________________
# Write a script called myavg that calculate average of all numbers entered by a user.
# Note: use arrays
# echo "size of your array is ?"
# read size
# sum=0
# for ((i=1;i<=size;i++)); do
# echo "enter value of $i element in array"
# read val
# typeset -i myArray[$i-1]=$val
# done
# for ele in ${myArray[@]}; do
#   let sum=sum+ele
# done
# len=${#myArray[@]}
# # let avg=` expr $sum/$len`
# # displaying the average
# # by piping with bc command
# # bc is bash calculator
# # command
# avg=`echo "$sum / $len" | bc -l`
# # echo $len
# printf '%0.3f' $avg
# echo $sum
# https://www.geeksforgeeks.org/average-given-numbers-bash/

# ________________________________________________
#______________________Question 11________________
# .Write a function called mysq that calculate square if its argument.
# function mysq (){
#     typeset -i x
#     ((x=$1*$1)) 
#     echo $x
# }
# mysq 2
