$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  row_index = 0
  while row_index < director_data[:movies].length do
    if total
      total += director_data[:movies][row_index][:worldwide_gross]
    else total = director_data[:movies][row_index][:worldwide_gross]
    end
    row_index += 1
  end
  return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  column_index = 0
  while column_index < nds.length do
    d_name = nds[column_index][:name]
    if result[d_name]
      result[d_name] += gross_for_director(nds[column_index])
      else
        result[d_name] = gross_for_director(nds[column_index])
    end
    column_index += 1
  end
  return result
end