$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
director_index = 0 

def gross_for_director(director_data)
  movie_index = 0 
  while movie_index < directors_database[director_index].length do
    director_total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
director_total
end 

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  name_index = 0 
  name_len = nds[name_index].length
  
  while name_index < name_len do 
    director_name = nds[director_index][:name]
    results[director_name] = 0 
    director_index += 1 
  end 
  
  nil
end
