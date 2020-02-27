
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  
  directors = director_data
  
  total_movie_gross = 0 
  movie_counter = 0
  while movie_counter < directors[:movies].count do 
    total_movie_gross += directors[:movies][movie_counter][:worldwide_gross]
    movie_counter += 1 
  end
  return total_movie_gross
end

#______________________________________________________#

def directors_totals(nds)
  grand_totals = {}
  
  nds.each do |d|
    director_gross = 0 
    while director_gross < d.count do
      director = d[:name] 
      total_gross = gross_for_director(d)
      director_gross += 1
    end
    grand_totals[director] = total_gross
  end    
  return grand_totals
end


#total_movie_gross = 0 
#    movie_counter = 0 
#    while movie_counter < all_directors[directors][:movies][movie_counter][:worldwide_gross].count do
#      total_movie_gross += gross_for_director(all_directors)
#      result[all_directors[directors][:name]] = total_movie_gross
#      movie_counter += 1 
#    end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }