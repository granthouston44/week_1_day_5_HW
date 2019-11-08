def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount_of_cash)
  pet_shop[:admin][:total_cash] += amount_of_cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_of_sold)
  pet_shop[:admin][:pets_sold] = number_of_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, searched_breed)
  result = []
  for each_breed in pet_shop[:pets]
    if each_breed[:breed] == searched_breed
      result << each_breed[:name]
    end
  end
  result
end

def find_pet_by_name(pet_shop, name)
    pet = {name: "name"}
    for each_name in pet_shop[:pets]
      if each_name[:name] == name
        pet[:name] = name
      end
    end
    pet
end
