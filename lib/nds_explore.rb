$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp directors_database
  puts directors_database
end

def print_first_directors_movie_titles
  dir_movies = directors_database[0][:movies]
  movies_index = 0
  while movies_index < dir_movies.length do
    movies = dir_movies[movies_index][:title]
    puts movies
    movies_index += 1
  end
end
