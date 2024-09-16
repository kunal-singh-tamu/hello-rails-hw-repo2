# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},
  {:title => 'Inception', :rating => 'PG-13',
    :release_date => '16-Jul-2010'},
  {:title => 'The Dark Knight', :rating => 'PG-13',
    :release_date => '18-Jul-2008'},
  {:title => 'The Social Network', :rating => 'PG-13',
    :release_date => '01-OCt-2010'}

]

more_movies.each do |movie|
  #Movie.create!(movie)
  #Movie.upsert(movie, unique_by: :title) -- used to ensure no duplication based on title. need to add unique
  # unique constraint in databse
  Movie.find_or_create_by(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
  end
end