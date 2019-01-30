#!/bin/bash
# Authors : Jacob Malcy
# Date: 1/30/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!


echo -n "Enter a regular expression: "
read reg

echo -n "Enter a file name: "
read fN

grep $reg $fN 2>/dev/null

phoneLines=$(grep -Pc "([0-9]{3}-){2}[0-9]{4}" regex_practice.txt)
echo $phoneLines

emailLines=$(grep -Pc "^.+@.+\..+$" regex_practice.txt)
echo $emailLines

grep -P "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt | less
grep -P "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt > phone_results.txt

grep -P "^.+@geocities\.com$" regex_practice.txt | less
grep -P "^.+@geocities\.com$" regex_practice.txt > email_results.txt

grep -P $1 regex_practice.txt | less
grep -P $1 regex_practice.txt > command_results.txt
