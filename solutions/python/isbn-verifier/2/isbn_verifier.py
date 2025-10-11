def is_valid(isbn):
    isbn = isbn.replace("-", "")

    if not all(ch.isdigit() or (ch in ("X", "x") and i == 9) for i, ch in enumerate(isbn)):
        return False

    if len(isbn) != 10:
        return False

    numbers = [10 if ch in ("X", "x") else int(ch) for ch in isbn]

    return sum(num * (10 - i) for i, num in enumerate(numbers)) % 11 == 0