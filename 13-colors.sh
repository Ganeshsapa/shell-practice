#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
G="\e[0m"

CHECK_ROOT(){
if [ $USERID -ne 0 ]
then echo "Please run this script with root priveleges"
exit 1
fi
}

VALIDATE()
{   if [ $1 -ne 0 ]
        then
            echo " $2 is ..$R FAILED $N"
            exit 1
        else 
            echo " $2 is ..$G SUCCESS $N"
    fi
        
}



dnf list installed git

VALIDATE $? "Listing Git"

if [ $? -ne 0 ]

then
    echo "Git is not installed,going to install it.."
    dnf install gittt -y
    VALIDATE $? " Installing Git"
    
else
    echo "Git is already installed, nothing to do.."
fi

dnf list installed mysql

if [ $? -ne 0 ]

then
    echo "MySQL is not installed...going to install"
    dnf install mysql -y
    VALIDATE $? "Installing MYSQL"

else
    echo "MYSQL is already insatlled ..nothing to do"
fi
