def response(hey_bob):
    msg = hey_bob.strip()
    
    return (
        "Fine. Be that way!" if not msg 
        else "Calm down, I know what I'm doing!" if msg.isupper() and msg.endswith("?")
        else "Whoa, chill out!" if msg.isupper()
        else "Sure." if msg.endswith("?")
        else "Whatever."
    )
