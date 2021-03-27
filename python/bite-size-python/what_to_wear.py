temperature = int(input('What is the temperature? '))

def advice():
    if temperature >= 1000:
        return 'You will die'
    elif temperature >= 120:
        return 'Are you serious?'
    elif temperature >= 80:
        outfit = 'shorts and pack your sunglasses'
    elif temperature >= 60:
        outfit = 'a light jacket'
    elif temperature <= -100:
        return 'Are you serious?'
    elif temperature <= -1000:
        return 'You will die'
    else:
        outfit = 'a coat in addition to a hat, gloves, and scarf'

    return f'Today you should wear {outfit}'

print(advice())
