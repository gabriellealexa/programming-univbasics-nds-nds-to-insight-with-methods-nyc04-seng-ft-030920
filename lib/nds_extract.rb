$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 
  result = {}
  director_index = 0
  director = nds[director_index]
  result[director[:name]] = 0 
  
    while director_index < nds[director_index].length do
      result[director[:name]] += gross_for_director(director)
      director_index += 1
    end 
  result 
end

def gross_for_director(director_data)
  earnings = 0
  director_index = 0
  movie_index = 0 
  while movie_index < director_data[:movies].length do
    earnings += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1 
  end
  earnings 
end 
