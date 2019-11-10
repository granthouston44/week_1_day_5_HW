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
  found_pet = nil
  for pet in pet_shop[:pets]
    if pet[:name] == name
      found_pet = pet
      return found_pet
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
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  updated_cash = customer_cash(customer) - amount
  customer[:cash] = updated_cash
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] = [new_pet]
end

def customer_can_afford_pet(customer, new_pet)
  if new_pet[:price] <= customer_cash(customer)
    return  true
  else false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil
    if customer_can_afford_pet(customer, pet) == true
      add_pet_to_customer(customer, pet)
      increase_pets_sold(pet_shop, customer_pet_count(customer))
      remove_customer_cash(customer, pet[:price])
      add_or_remove_cash(pet_shop, pet[:price])
    else
      return
    end
  else pet = nil
  end
end
