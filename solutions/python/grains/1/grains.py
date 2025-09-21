def proper_number(number_check):
    if 0 < number_check < 65:
        return number_check
    else:
        raise ValueError("square must be between 1 and 64")

def square(number):
    number = proper_number(number)
    return 2**(number-1)

def total():
    number = 64
    return 2**number - 1
