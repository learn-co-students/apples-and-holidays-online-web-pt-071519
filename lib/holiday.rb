 require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # binding.pry
 holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].values.each do |supplies|
    supplies << supply
  end
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] = supply

  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash.each do |season, holiday|
    holiday_hash[season][holiday_name] = supply_array
  end

  # code here
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].values.each do |winter_hash|
    winter_hash.each do |supply|
      winter_supplies << supply
    end
  end
  winter_supplies

end




def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |key_season, key_hash|
    puts key_season.to_s.capitalize + ":"
    key_hash.each do |key, supply|
# binding.pry
      
      puts "  #{key.to_s.split("_").map{|key|key.capitalize}.join(" ")}: #{supply.join(", ")}"

    end
  end
  # puts key_holiday.capitalize + ":"

  

  # iterate through holiday_hash and print items such that your readout resembles: puts season + ": " \n + holiday_name + ": "(supply)  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end




def all_holidays_with_bbq(holiday_hash)
  bbq_array = []
  holiday_hash.each do |season, holiday_name|
    holiday_name.each do |holiday, value|
      if value.include? ("BBQ")
        bbq_array << holiday
      end
    end
# binding.pry
  end
  
  bbq_array
    
#     result = plants.sort{|x, y| x[1] <=> y[1]}
# result.each do |key, value|
#     puts String(value) + "..." + key
  # return an array of holiday names (as symbols) where supply lists include the string "BBQ"

end