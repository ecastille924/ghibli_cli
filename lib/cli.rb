 class CLI 

    def start
       puts "Welcome!!!"

       API.fetch_films
       self.menu
    end

    def menu
        puts "Wanna see a full list of Studio Ghibli films?"
        puts "Type 'y' to continue, or 'n' to exit."

        user_input = gets.strip.dowcase 

        if user_input == "y"
            puts "Fatastic!"
            show_list_of_films
        end
    end

    def show_list_of_films
            
    end
end