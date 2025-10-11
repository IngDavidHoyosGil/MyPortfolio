def is_isogram(string):
    letters = [ch.lower() for ch in string if ch.isalpha()]

    return len(letters) == len(set(letters))
