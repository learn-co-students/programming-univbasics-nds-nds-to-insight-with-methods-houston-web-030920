$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(nds)
  total_grosses = 0
  counter = 0
    while counter < nds[:movies].length do
    total_grosses += nds[:movies][counter][:worldwide_gross]
    counter += 1
  end
  total_grosses
  
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  total = {}
  index = 0

  while index <  nds.length do
    d_name = nds[index][:name]
    total[d_name] = 0
    counter = 0
    while counter < nds[index][:movies].length do
    total[d_name] += nds[index][:movies][counter][:worldwide_gross]
    counter += 1
    end
    index += 1
  end
  return total

  
end
