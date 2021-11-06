![image](https://bootcamp.rhinops.io/images/git.gif)
# password-validator-week2
![image](https://bootcamp.rhinops.io/images/scripts-automation.png)
## Project Overview

In this project we will understand how to write basic scripts and how to manage them with Git. The project will consist of creating a bash script and storing it in the main branch of your public git repository hosted in Github. Then, you will be asked to add a new functionality in a feature branch and create a pull request.

## Goals
Create a public git repository in the Github

Write a password validator script as described below and store it in the main branch of your git repository

Write a bash script to validate password strength with the following requirements:

Length – minimum of 10 characters.
Contain both alphabet and number.
Include both the small and capital case letters.
Color the output (as seen in expected result) green if it passed the validation and red if it didn’t.
Return exit code 0 if it passed the validation and exit code 1 if it didn’t.
If a validation failed provide a message explaining why
Make sure your script can run automatically without the need for human intervention
Write the script in the best possible way (for performance and UX)

Usage example: ./password-validator.sh "MyP@ssw0rd!"

Create a feature branch to improve the script as described below

Extend the script by adding the following capability:

If the option “-f” is added the password should be retrieved from a file

Usage example: ./password-validator.sh -f "/mypath/password.txt"

Create a pull request to integrate your feature branch into the main branch (DO NOT complete the merge)

## Considerations

Make sure you meet each of the project requirements
Make sure your code is clean and well documented, this will be evaluated
From now on we expect you to manage all the code related to the bootcamp using Git

## Bonus

Create an additional branch an name it “powershell”
In the “powershell” branch write the same script this time using powershell
Expected Result
You created a public git repository in any hosting service
Your main branch contains the basic bash script
Your repository have a feature branch that contains the bash script with the improvements
You created a pull request to integrate the feature branch into your main branch (it should be opened)
In case you did the bonus, we expect to see the powershell script in the “powershell” branch

## Extra Project (Optional)

In this project you will create two different scripts. The first one will open notepad and the second one will use the “Windows Task Scheduler” to run the first script periodically. There are many ways to figure it out, try to find the most elegant, but remember the most important thing is that at the end of the day you meet the requirements!

Migrate your repository (including history) to another provider Github
Create a new branch called “bonus” to implement the below
Create the first powershell script that open “notepad” with the content “Hello Bootcamp!”
Create the second script with the following logic:
Create a “windows task” that must execute the script (created on #3) periodically according to the time (passed as a parameter)
Wait X seconds (received as parameter)
Disable the task in the windows task scheduler (to avoid it’s execution)
Get all task’s full names and create a clean output with the task names

Example Usage: .\Task-Generator.ps1 -TaskName "MyName" -TriggerSeconds “60” -WaitSeconds "120”

Example Output:

\Adobe Acrobat Update Task

\CCleanerSkipUAC

\Dragon_Center_updater

\Dragon_Center_updater

…
