echo "enter the password"
read password
while len="${#password}"
do
if test $len -ge 10 ; then
    echo "$password" | grep -q [0-9]
    if test $? -eq 0 ; then
           echo "$password" | grep -q [A-Z]
                if test $? -eq 0 ; then
                    echo "$password" | grep -q [a-z]   
                      if test $? -eq 0 ; then
                       echo "Strong password
exit code 0"
GREEN='\033[0;32m'
printf "${GREEN}Strong password${NC} \n"
read password
break
                   else
                       echo "weak password include lower case char
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
read password
                   fi
#break
            else
               echo "weak password include capital char
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
read password
            fi
#break
     else
       echo "please include the numbers in password it is weak password
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
read password
     fi
#break
else
    echo "password lenght should be greater than or equal 10 hence weak password
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
read password
fi
#break
done