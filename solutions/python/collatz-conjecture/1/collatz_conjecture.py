def proper_number(check_number):
    if check_number > 0:
        return check_number
    else:
        raise ValueError("Only positive integers are allowed") 

def steps(number):
    number = proper_number(number)
    
    if number == 1:
        return 0
    elif number % 2 == 0:
        number //= 2
        return 1 + steps(number)
    else:
        number = number * 3 + 1
        return 1 + steps(number)