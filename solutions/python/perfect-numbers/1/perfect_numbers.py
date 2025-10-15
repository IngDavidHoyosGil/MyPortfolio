def classify(number):
    """ A perfect number equals the sum of its positive divisors.

    :param number: int a positive integer
    :return: str the classification of the input integer
    """
   
    if number < 1 or not isinstance(number, int):
        raise ValueError("Classification is only possible for positive integers.")

    divisors = [i for i in range(1, number) if number % i == 0]
    aliquot_sum = sum(divisors)

    return (
        "perfect" if aliquot_sum == number
        else "abundant" if aliquot_sum > number
        else "deficient"
    )