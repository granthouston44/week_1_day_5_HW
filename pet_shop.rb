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
    pet = {}
    for each_name in pet_shop[:pets]
      if each_name[:name] == name
        pet[:name] = name
        return pet
      end
    end
    return nil
end

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  @customers[0][:cash]
end

def remove_customer_cash(customer, amount)
  updated_cash = customer_cash(customer) - amount
  @customers[0][:cash] = updated_cash
end
