#!/bin/bash

# Find all lines containing "banana"
echo "Lines containing 'banana':"
grep "banana" sample.txt

# Find lines that do not contain "banana"
echo -e "\nLines NOT containing 'banana':"
grep -v "banana" sample.txt

# Use uniq to find unique lines (sort first to make uniq work correctly)
echo -e "\nUnique lines from sample.txt:"
sort sample.txt | uniq

# Use uniq to count occurrences of each word
echo -e "\nWord occurrences:"
sort sample.txt | uniq -c

# Combine grep and uniq to count occurrences of "banana"
echo -e "\nCount occurrences of 'banana':"
grep "banana" sample.txt | sort | uniq -c
