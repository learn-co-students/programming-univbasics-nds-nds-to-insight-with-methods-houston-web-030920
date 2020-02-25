$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total_gross_per_director = 0 
  row_index = 0 
  
  while row_index < director_data[:movies].count do
    total_gross_per_director += director_data[:movies][row_index][:worldwide_gross]
    
    row_index += 1 
  end 
  
  return total_gross_per_director
end

#------------------------------------

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  
  row_index = 0 
  
  while row_index < nds.count do 
    
    result["#{nds[row_index][:name]}"] = gross_for_director(nds[row_index])
    
    row_index += 1 
  end 
  
  return result
end
