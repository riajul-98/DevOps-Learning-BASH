# DevOps-Learning-BASH
Scripting is used to simplify tasks which may need to be repeated in order to increase efficiency. Scripting can be used to process data, manipulate files, automate installations and updates.

## Shebang
The shebang line tells the OS which interpreter it should use and how to run the script. It should be placed at the start of the script. e.g. #!/bin/bash

## Comments
Comments are used to provide information about the script to anyone reading. They are not executed and do not affect the scripts. It is considered a best practice.

## Running scripts from anywhere
To run a script from anywhere in the system, you would need to make sure the script is in one of the directories outlined in $PATH.

## Variables
Variables are used to store data and therefore makes your scripts dynamic and efficient. They can be strings, integers or arrays. To assign a variable, you would do the below:
`greeting="Hello"`

To call this variable, you would add it to your scripts with a dollar symbol in front. For example:
`echo $greeting`

You can also use variables within strings to create dynamic outputs. To do this, you just add the variable name after a dollar sign within the string.

## Parameters
When you wish to pass a parameter to a script, you would need to call the script, followed by the parameter. For example;
`./script.sh parameter1 parameter2`. For the script to access these parameters, you would need to use $1, $2, $3 etc, in the places you need them. You can view all parameters by adding $@ in your script.

## Arithmetic Expansion
To have your script perform arithmetic functions such as adding, you would need to encapsulate the expression in double parenthsis and a dollar sign in front. For example, `result=$((num1 + num2))`

You can also perform these functions using parameters. Here, instead of setting values to the variables, you set them as $1, $2... etc encapsulated with speachmarks.

## If, elif and else statements
If statements allows the script to check if a condition is true before running code. For example:
```
age=25

if [ $age -gt 19 ]
then
    echo "You are an adult"
fi

```

Logical operators such as && (and) and || (or) can be used to create more complex if statements.

We can also have an else block in our code which would execute if the previous statement is false. This would go before the fi. Further, we can have multiple if statements with the use of elif. This would go after the if statement and before the else statement.

If statements can also be nested within other if statements. For example:

```
#!/bin/bash

age=18
score=85

if [ $age -gt 18 ]
then
    echo "You are eligible based on age"
    if [ $score -ge 80 ]
    then
        echo "You are eligible based on grade."
        echo "Congrats, you are eligible based on age and grade!"
    else
        echo "Sorry, your grade if not high enough"
    fi
else
    echo "Sorry, you are not eligible"
fi
```

## While loops
While loops cause your script to repeat a set of instructions while a condition is true. The format can be seen below;

```
while condition
do
    # code to be executed
done
```

## For loops
For loops allow you to iterate over a sequence of values and perform repetitive tasks. The format can be seen below;

```
for variable in sequence
do
    # code to be executed
done
```

Break statements allow you to exit the loop early if a specific condition is met. The continue statement allows you to skip over to the next iteration if a specific condition is present. These statements can also be used with while loops.

## Functions
Functions allow us to turn code into modules, allowing for reusability, improve efficiency and making our scripts less prone to mistakes. The function definition can be seen below;

```
function_name() {
    # code block to be executed
}
```

To call the function, we type in the function name (no brackets). Functions can also take parameters. There are two types of parameters, positional parameters and special parameters. Positional parameters are parameters which we define and special parameters are provided by bash. For example `$#` is the number of arguments passed and `$0` would provide the script name.

## User Inputs
User inputs allow scripts to ask a user a question and take a response. This is done using the `read` command.

## Handling bad data
Error handling can be done in many different ways. Conditional statements can be used to check the validity of user inputs. For example, if a user enters anything other than numbers for age, we can use an if statement to check if the input is numeric and if it isn't the script prints an error message and returns a non-zero exit code.

Another way we can handle bad data is by using input sanitisation. This involves cleaning and transforming user inputs to meet the required format or constraints.

## Piping within functions
Piping in functions is used to store values into variables. 

## Error Handling
Involves foreseeing errors before they occur and handling them in a way where your scripts do not crash or carry on in an erronious state. 

Exit codes are numerical values which tells the system whether the command or script has executed correctly or not. 0 represents success and anything else represents failure.

`set -e` is used to stop the script if any of the commands return a non-zero exit code. This would be placed at the top of the script after the shebang.

`set -u` is used to stop the script if it encounters an uninitialised variable. Helps to avoid scenarios where missing data leads to incorrect results or unexpected behaviour.

`set -x` is used to print each command that is executed to the terminal before actually being executed. This allows us to diagnose which command has caused an error in the script. `Set +x` can be used to stop printing the commands to the screen.

`set -eux` can be used to combine all the above together

`set -o nounset` is similar to the `set -u` command. It helps catch uninitialised variables.

`set -o errorexit` is the same as `set -e` command. It causes the script to exit if any non-zero exit codes are returned.

`set -o pipefail` causes the pipeline to return the exit status of the last command in the pipeline that exited with a non-zero status. Useful when piping commands together.

## Permanently changing PATH
You can run your scripts from anywhere by adding them to the PATH. You can do this by running the command `echo "EXPORT PATH=$PATH:path_to_scripts" >> ~/.bashrc`. You would then reload the file using the command `source ~/.bashrc`. You would now be able to run the scripts from anywhere without specifying the directory.

## Reading Environment Variables
Environment variables allow us to store and retreive important information within our bash script such as the home directory, user and OS type. For example to store the home directory in a variable, we can use the command `my_home="$HOME"`

## Reading Files
To read a file, you would use the read command. You can also use the cat command.

## Wrting Files
To write to a file, you would use the redirection or append command with the file you wish to write to.

## File Checksums
File Checksums are cryptographic hashes that provide a unique fingerprint for a file, allowing us to verify the authenticity of the file. You can generate checksums using the md5sum or the sha256sum commands. Checksums are great when checking if the same file across 2 different systems are really the same by checking if the checksums match.