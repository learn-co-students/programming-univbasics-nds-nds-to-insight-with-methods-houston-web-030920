$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(nds)
  total = 0
  index = 0

  while index < nds[:movies].length do
    total += nds[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end



def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.size do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end


