def score(x, y):
    dart_squared = x**2 + y**2

    return (
        0 if dart_squared > 100
        else 1 if 25 < dart_squared <= 100
        else 5 if 1 < dart_squared <= 25
        else 10 
    )