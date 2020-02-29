$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  director_total = 0 
  director_index = 0
  while director_index < directors_database.length do 
    movie_index = 0 
    while movie_index < directors_database[director_index].length do
     director_total += directors_database[director_index][:movies][movie_index][:worldwide_gross]
     movie_index += 1 
    end
  director_index += 1 
  end
end 

def directors_totals(nds)
  result = {}
  result[director_name] = 0
  
  while director_index < nds[director_index].length do 
    director_name = nds[director_index][:name]
    result[:director_name] += gross_for_director
    
    director_index += 1
  end 
  result 
end
