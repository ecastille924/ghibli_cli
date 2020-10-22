 class CLI 

    def start
       puts "Welcome!!!"

       API.fetch_films
       self.menu
    end

    def menu
        puts "\n"
        puts "Wanna see the full list of Studio Ghibli films?"
        puts "\n"
        puts "Type 'y' to continue, or 'n' to exit."
        puts "\n"

        user_input = gets.strip.downcase 

        if user_input == "y"
            puts "\n"
            puts "Fatastic! Here's the list of all 20:"
            puts "\n"
            show_list_of_films
            ask_for_film_choice

            sleep(4)

            menu

        else
            puts "\n"
            puts "Thanks for using the program! Bye!"
        end
    end

    def show_list_of_films
        Film.all.each.with_index(1) do |film, index|
            puts "#{index}. #{film.title}"
        end
    end

    def ask_for_film_choice
        puts "Enter film number for more info!"
        puts "\n"
        index = gets.strip.to_i - 1

        until index.between?(0, Film.all.length - 1)
            puts "Invalid selection. Please enter a number 1 - 20."
            index = gets.strip.to_i - 1
        end

        film_instance = Film.all[index]

        display_film_info(film_instance)
    end
        
        def display_film_info(film)
            puts "\n"
            puts "Title - " + film.title 
            puts "Release Date - " + film.release_date
            puts "Director - " + film.director
            puts "Producer - " + film.producer
            puts "Rotten Tomatoes Score - " + film.rotten_tomatoes_score
            puts "Synopsis - " + film.description     
        end
end

