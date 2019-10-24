require 'pp'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp directors_database
  nil
end

#def print_first_directors_movie_titles
  #row_index = 0 
  #while row_index < directors_database[:movies].length do
    #puts directors_database[0][:movies][row_index][:title]
    #row_index += 1
  #end
#end

def print_first_directors_movie_titles
  row_index = 0
  database = directors_database
  while row_index < database[0][:movies].length
    puts database[0][:movies][row_index][:title]
    row_index += 1
  end
end

print_first_directors_movie_titles

#NOTES
  #directors_database[0] #=> EVERYTHING
  #directors_database[0][:name] #=> "Stephen Spielberg"
  
  #JUST NEED TO CYCLE THROUGH THE COLUMN ARRAY
  #directors_database[0][:movies][0][:title] #=> "Jaws" 

#[{:name=>"Stephen Spielberg",
  #[{:title=>"Jaws",
    # :studio=>"Universal",
    # :worldwide_gross=>260000000,
    # :release_year=>1975},
    #{:title=>"Close Encounters of the Third Kind",
    # :studio=>"Columbia",
    # :worldwide_gross=>135189114,
    # :release_year=>1977},
    #{:title=>"Raiders of the Lost Ark",
    # :studio=>"Paramount",
    # :worldwide_gross=>248159971,
    # :release_year=>1981},
    #{:title=>"E.T. the Extra-terrestrial",
    # :studio=>"Universal",
    # :worldwide_gross=>435110554,
    # :release_year=>1982},
    #{:title=>"Schindler's List",
    # :studio=>"Universal",
    # :worldwide_gross=>96898818,
    # :release_year=>1993},
    #{:title=>"Lincoln",
    # :studio=>"Buena Vista",
    # :worldwide_gross=>182207973,
    # :release_year=>2012}]}]