$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total = 0 
i = 0
  while i < director_data[:movies].length do 
    total += director_data[:movies][i][:worldwide_gross]
    i += 1 
end 
total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  j = 0 
  while j < nds.size do 
    director = nds[j]
    result[director[:name]] = gross_for_director(director)
    j += 1 
  end 
  result
end
