coded_colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue', 
    'violet',
    'grey',
    'white'
]

def value(colors): 
    first = coded_colors.index(colors[0])
    second = coded_colors.index(colors[1])
    return int(f'{first}{second}') 
