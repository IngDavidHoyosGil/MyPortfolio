"""
This exercise stub and the test suite contain several enumerated constants.

Enumerated constants can be done with a NAME assigned to an arbitrary,
but unique value. An integer is traditionally used because it’s memory
efficient.
It is a common practice to export both constants and functions that work with
those constants (ex. the constants in the os, subprocess and re modules).

You can learn more here: https://en.wikipedia.org/wiki/Enumerated_type
"""

# Possible sublist categories.
# Change the values as you see fit.
SUBLIST = 1
SUPERLIST = 2
EQUAL = 3
UNEQUAL = 4


def sublist(list_one, list_two):

    len_one = len(list_one)
    len_two = len(list_two)

    if 0 in (len_one, len_two):
        return (
            EQUAL if len_one == len_two 
            else SUBLIST if len_one == 0
            else SUPERLIST
        )
    
    if len_one == len_two:
        return EQUAL if list_one == list_two else UNEQUAL

    elif len_one < len_two:
        for i in range(len_two - len_one + 1):
            if list_one == list_two[i:len_one + i]:
                return SUBLIST
        return UNEQUAL       
        
    else:
        for i in range(len_one - len_two + 1):
            if list_two == list_one[i:len_two + i]:
                return SUPERLIST
        return UNEQUAL
 
