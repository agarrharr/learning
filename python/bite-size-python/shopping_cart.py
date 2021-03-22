flowerpot_price = 4.00
flower_seeds_price = 1.00
soil_price = 5.00
tax_rate = 0.06

number_of_pots = int(input('How many flowerpots? '))
number_of_seeds = int(input('How many packs of seeds? '))
number_of_bags = int(input('How many bags of soil? '))

cost_of_items = (number_of_pots * flowerpot_price)
+ (number_of_seeds * flower_seeds_price)
+ (number_of_bags * soil_price)

print(cost_of_items)
