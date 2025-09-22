def is_armstrong_number(number):
    number_string = str(number)
    power = len(number_string)
    total_amount = 0
    for digits in number_string:
        total_amount += int(digits)**power 

    return total_amount == number