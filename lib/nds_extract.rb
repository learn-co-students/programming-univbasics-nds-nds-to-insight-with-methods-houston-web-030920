$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
sum = 0 
i = 0 

while i < director_data[:movies].length do 
  sum += director_data[:movies][i][:worldwide_gross]
  i += 1 
end
sum 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  array = {}
  director_index = 0 
  while director_index < nds.length do 
    director = nds[director_index]
    array[director[:name]] = gross_for_director(director)
  director_index += 1
end
array 
end


