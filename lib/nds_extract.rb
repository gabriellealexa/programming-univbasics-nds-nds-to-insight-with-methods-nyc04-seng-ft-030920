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

def directors_totals(nds)
  name_index = 0
  result = {}
  result[director_name] = 0
  
  while name_index < nds[name_index].length do 
    director_name += nds[name_index][:name]
    result[director_name] += director_total 
    name_index += 1
    
  end 
  result 

end
