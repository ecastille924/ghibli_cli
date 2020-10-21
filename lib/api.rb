class API     

def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"

    
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    array_of_films = hash

    array_of_films.each do |film_hash|
        film = Film.new
        film.title = film_hash["title"]
        film.description = film_hash["description"]
        film.release_date = film_hash["release_date"]
        film.director = film_hash["director"]
        film.producer = film_hash["producer"]
        film.rotten_tomatoes_score = film_hash["rt_score"]
    end
end

end