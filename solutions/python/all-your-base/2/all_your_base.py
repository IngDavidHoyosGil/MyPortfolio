def rebase(input_base, digits, output_base):
    if input_base < 2:
        raise ValueError("input base must be >= 2")
    if output_base < 2:
        raise ValueError("output base must be >= 2")
    
    for d in digits:
        if not (0 <= d < input_base):
            raise ValueError("all digits must satisfy 0 <= d < input base")

    if not digits or all(d == 0 for d in digits):
        return [0]

    decimal_value = 0
    for d in digits:
        decimal_value = decimal_value * input_base + d

    output_digits = []
    while decimal_value > 0:
        output_digits.append(decimal_value % output_base)
        decimal_value //= output_base

    output_digits.reverse()
    return output_digits