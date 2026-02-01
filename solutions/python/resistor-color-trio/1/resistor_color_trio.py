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

prefix = {
    'ohms': 0,
    'kiloohms': 3,
    'megaohms': 6,
    'gigaohms': 9
}

def label(colors):
    first = coded_colors.index(colors[0])
    second = coded_colors.index(colors[1])
    third = coded_colors.index(colors[2])
    
    value = int(f'{first}{second}') * 10**third
    
    str_prefix = (
                "gigaohms" if value // 10**9 >= 1 
                else "megaohms" if value // 10**6 >= 1 
                else "kiloohms" if value // 10**3 >= 1 
                else "ohms"
    )

    value = value // 10**(prefix[str_prefix])

    return f'{value} {str_prefix}' 
