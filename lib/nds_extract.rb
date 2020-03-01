$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
  result = {}
  director_index = 0
  
  director_name = nds[director_index][:name]
  result[director_name] = 0 
  
    while nds_index < nds[director_index].length do
      director = nds[]
      result[director_name] += gross_for_director
      director_index += 1
    end 
  result 
end

def gross_for_director(director_data)
  earnings = 0
  director_index = 0
  movie_index = 0 
  while movie_index < directors_database[director_index][:movies].length do
    earnings += directors_database[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
  earnings 
end 
