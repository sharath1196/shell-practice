#!/bin/bash

#Note : Backslash is used to escape the character.
echo "\$0 prints the filename : $0"

echo "\$1 \$2 \$3.....\$9 are arguments passed to the script"

echo "\$@ prints all arguements passed as seperate words : $@"

echo "\$* prints all arguements passed as single word : $*"

echo "\$# prints the number of arguements passed in the script : $#"

echo "\$$ prints the PID(Process ID) of the script : $$"

echo "\$! PID of the last background command : $!"

echo "\$? prints the exit status of the last command : $?"





