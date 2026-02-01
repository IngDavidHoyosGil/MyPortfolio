def line_up(name, number):
    str_number = str(number)

    ordinal = (
        'st' if (str_number[-1] == '1' and str_number[-2:] != '11')
        else 'nd' if (str_number[-1] == '2' and str_number[-2:] != '12')
        else 'rd' if (str_number[-1] == '3' and str_number[-2:] != '13')
        else 'th'   
    )

    return f'{name}, you are the {number}{ordinal} customer we serve today. Thank you!'