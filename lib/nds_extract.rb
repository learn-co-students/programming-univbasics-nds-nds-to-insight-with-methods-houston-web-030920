
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  data = 0
  i=0 
  while i < director_data[:movies].length do
   data += director_data[:movies][i][:worldwide_gross]
   i += 1
end
return data
  

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  pp nds
  result = {}
  nil
  director_index=0 
  while director_index<nds.count do 
    directorname= nds[director_index][:name]
    director=nds[director_index]
    total= gross_for_director(director)
    result[directorname]=total
    director_index+=1 
  end
  result
end
