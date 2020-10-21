class API     

def self.fetch_films
    url = "https://ghibliapi.herokuapp.com/films"

    
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    array_of_films = hash

    #title
    #description
    #release_date
    #director
    #producer
    #rt_score

    array_of_films.each do |film_hash|
    title = film_hash["title"]
    description = film_hash["description"]
    release_date = film_hash["release_date"]
    director = film_hash["director"]
    producer = film_hash["producer"]
    rotten_tomatoes_score = film_hash["rt_score"]
    binding.pry
    end


end

end