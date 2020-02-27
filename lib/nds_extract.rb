$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 pp director_data
 movies_index=0 
 total=0 
 movies=director_data[:movies]
 while movies_index<movies.count do 
   gross= movies[movies_index][:worldwide_gross]
   total+=gross
   movies_index+=1 
 end
 total
 end
   
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  pp nds
  result = {}
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

