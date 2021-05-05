#!/bin/bash
# Shell program to find the validity of a given date

dd=0
mm=0
yy=0

# store number of days in a month
days=0

# get day, month and year
echo -n "Enter day (dd) : "
read dd

echo -n "Enter month (mm) : "
read mm

echo -n "Enter year (yyyy) : "
read yy

# if month is negative (<0) or greater than 12
# then it is invalid month
if [ $mm -le 0 -o $mm -gt 12 ];
then
    echo "$mm is invalid month."
    exit 1
fi

# Find out number of days in given month
case $mm in
    1) days=31;;
    2) days=28 ;;
    3) days=31 ;;
    4) days=30 ;;
    5) days=31 ;;
    6) days=30 ;;
    7) days=31 ;;
    8) days=31 ;;
    9) days=30 ;;
    10) days=31 ;;
    11) days=30 ;;
    12) days=31 ;;
    *) days=-1;;
esac

# find out if it is a leap year or not

if [ $mm -eq 2 ]; # if it is feb month then only check of leap year
then
 if [ $((yy % 4)) -ne 0 ] ; then
    : #  not a leap year : means do nothing and use old value of days
 elif [ $((yy % 400)) -eq 0 ] ; then
    # yes, it's a leap year
    days=29
 elif [ $((yy % 100)) -eq 0 ] ; then
    : # not a leap year do nothing and use old value of days
 else
    # it is a leap year
    days=29
 fi
fi

# if day is negative (<0) and if day is more than
# that months days then day is invaild
if [ $dd -le 0 -o $dd -gt $days ];
then
    echo "$dd day is invalid"
    exit 3
fi

# if no error that means date dd/mm/yyyy is valid one
echo "$dd/$mm/$yy is a vaild date"