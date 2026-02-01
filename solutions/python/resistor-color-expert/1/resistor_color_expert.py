coded_colors = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9
}

prefix = {
    'ohms': 0,
    'kiloohms': 3,
    'megaohms': 6,
    'gigaohms': 9
}

tolerance = {
    'grey': 0.05,
    'violet': 0.1,
    'blue': 0.25,
    'green': 0.5,
    'brown': 1,
    'red': 2,
    'gold': 5,
    'silver': 10
}

def resistor_label(colors):

    if len(colors) == 1:
        return "0 ohms"
    
    tolerance_color = colors[-1]
    multiplier_color = colors[-2]
    digit_colors = colors[:-2]
    
    digits = ''.join(str(coded_colors[c]) for c in digit_colors)
    base_value = int(digits)

    value = base_value * 10**coded_colors[multiplier_color]
    
    for name, exp in [('gigaohms', 9), ('megaohms', 6), ('kiloohms', 3), ('ohms', 0)]:
        if value >= 10**exp:
            str_prefix = name
            break

    scale = 10**(prefix[str_prefix])
    display_value = value / scale
    
    display_value = (
            int(display_value) if display_value.is_integer()
            else display_value
    )

    tol = tolerance[tolerance_color]
    return f'{display_value} {str_prefix} ±{tol}%' 