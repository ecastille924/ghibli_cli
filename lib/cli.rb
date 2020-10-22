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
            ask_for_film_choice
        end
    end

    def show_list_of_films
        Film.all.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

    def ask_for_film_choice
        puts "Enter film number for more info!"

        index = gets.strip.to_i - 1

        until index.between?(0, Film.all.length - 1)
            puts "Invalid selection. Please enter a number 1 - 20."
            index = gets.strip.to_i - 1
        end

        film_instance = Film.all[index]
        puts film_instance.title
    end
end

puts "hey"