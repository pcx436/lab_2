#!/bin/bash
# Authors : Jacob Malcy
# Date: 1/30/2019

#Problem 1 Code:
echo -n "Enter a regular expression: "
read reg

echo -n "Enter a file name: "
read fN

#Problem 2 Code:
grep $reg $fN 2>/dev/null # added the "2>/dev/null" because I didn't want to keep typing an expression

# Problem 3.1
echo grep -Pc "([0-9]{3}-){2}[0-9]{4}" regex_practice.txt


# problem 3.2
echo grep -Pc "^.+@.+\..+$" regex_practice.txt

# problem 3.3
grep -P "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt | less
grep -P "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt > phone_results.txt

# problem 3.4
grep -P "^.+@geocities\.com$" regex_practice.txt | less
grep -P "^.+@geocities\.com$" regex_practice.txt > email_results.txt

# problem 3.5
grep -P $1 regex_practice.txt | less
grep -P $1 regex_practice.txt > command_results.txt
