temperature = int(input('What is the temperature? '))

if temperature >= 80:
    outfit = 'shorts and pack your sunglasses'
elif temperature >= 60:
    outfit = 'a light jacket'
else:
    outfit = 'a coat in addition to a hat, gloves, and scarf'

advice = f'Today you should wear {outfit}'
print(advice)
