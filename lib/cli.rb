 class CLI 

    def start
       puts "Welcome!!!"

       API.fetch_films
       self.menu
    end

    def menu
        puts "Wanna see a full list of Studio Ghibli films?"
        puts "Type 'y' to continue, or 'n' to exit."

        user_input = gets.strip.downcase 

        if user_input == "y"
            puts "Fatastic! Here's a list of all 20:"
            show_list_of_films
        end
    end

    def show_list_of_films
        Film.all.each do |film|
            puts film.title
        #binding.pry
        end
    end
end

puts "hey"