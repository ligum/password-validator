#please type a password in "P@$$w0rd!1" when you execute a file "
#or type -f "1.txt" as a parameter
password=$1
password2=$2
if [[ -n "$password2" ]];then
   password=$(<$password2);
 fi
len="${#password}" 
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
                   else
                       echo "weak password include lower case char
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
                   fi
#break
            else
               echo "weak password include capital char
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
            fi
#break
     else
       echo "please include the numbers in password it is weak password
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
     fi
#break
else
    echo "password lenght should be greater than or equal 10 hence weak password
exit code 1"
RED='\033[0;31m'
printf "${RED}Weak password${NC} \n"
fi
#break