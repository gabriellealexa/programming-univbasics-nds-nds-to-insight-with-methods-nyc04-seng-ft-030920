$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

director_totals = {}
director_name = directors_database[director_index][:name]
director_name[director_index]



  movie_index = 0 
  while movie_index < directors_database[director_index].length do
    director_total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
director_totals[:director_name] = director_total 
end 

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
