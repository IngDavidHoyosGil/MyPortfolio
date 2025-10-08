def translate(text):
    result = []
    vowels = ("a", "e", "i", "o", "u")
    words = text.split()
    
    for word in words:
        if word.startswith(vowels) or word.startswith(("xr", "yt")):
            result.append(word + "ay")

        elif word.startswith("qu") or (len(word) > 2 and word[1:].startswith("qu")):
            idx = word.index("qu") + 2
            result.append(word[idx:] + word[:idx] + "ay")

        elif "y" in word[1:] and all(v not in word for v in vowels):
            idx = word.index("y")
            result.append(word[idx:] + word[:idx] + "ay")

        else:
            idx = 0
            while idx < len(word) and word[idx] not in vowels:
                idx += 1
            result.append(word[idx:] + word[:idx] + "ay")

    return " ".join(result)