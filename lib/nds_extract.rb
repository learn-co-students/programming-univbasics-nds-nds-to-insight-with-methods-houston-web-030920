$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total_gross = 0 
  
  row_index = 0 
  while row_index < director_data[:movies].length do #How many row indexes are in the movies is whats to the left. There are 6. SO row index will loop twice, then end the looping.
 
    total_gross += director_data[:movies][row_index][:worldwide_gross] #Each time this loops it will add the worldwide gross of that particular movie IN THAT INDEX to the total gross of this particular director. WHICH IS WHY THIS IS DIRECTOR DATA. This is for a particular director. THIS WILL BE A MACHINE SPECIFICALLY FOR THE DIRECTOR PASSED TO IT FROM A GREATER MACHINE THAT THIS WILL BE INSIDE.
  
   row_index += 1 #This will loop thru each row index in ':movies', collecting the worldwide gross of the movie in each row index So how do we get to THE NEXT DIRECTOR??
end
total_gross #RETURNS THE TOTAL GROSS OF STEVENS MOVIES 
end 




# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  hash = {}
  
  big_index = 0 
  while big_index < nds.length do  
  
  name = nds[big_index][:name]
   
   hash[name] = 0 
   
  hash[name] += gross_for_director(nds[big_index])

  
  
  big_index += 1
end 
 
 return hash  
end







