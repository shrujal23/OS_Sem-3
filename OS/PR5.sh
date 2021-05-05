
echo 1.Display calendar of current month 
echo 2.Display today’s date and time 
echo 3.Display usernames those are currently logged in the system  
echo 4.Display your name at given x, y position  
echo 5.Display your terminal number
echo 6.Exit 
echo Enter your choice 
read i
case $i in
	1)cal;;
	2)date;;
	3)who;;
	4)tput cup 10 10 
	echo Shrujal;;
	5)pwd;;
	6)exit;;
	*)echo “enter valid input” ;;
esac