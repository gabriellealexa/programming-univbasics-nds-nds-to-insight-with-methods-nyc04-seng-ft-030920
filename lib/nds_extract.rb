$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  earnings = []
  director_index = 0
  while director_index < directors_database.length do 
    data_len = directors_database[director_index][:movies].length
    movie_index = 0 
    while movie_index < data_len do
     earnings << directors_database[director_index][:movies][movie_index][:worldwide_gross]
     movie_index += 1 
    end
  director_index += 1 
  end
  earnings 
end 

def directors_totals(nds)
  result = {}
  result[director_name] = 0
  
  while director_index < nds[director_index].length do
    director_name = nds[director_index][:name]
    result[director_name] += gross_for_director
    director_index += 1
  end 
  result 
end
