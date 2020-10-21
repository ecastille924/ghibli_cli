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

    array_of_films.each do |film_hash|
        binding.pry
    
    end


end

end