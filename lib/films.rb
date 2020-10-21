class Film
    attr_accessor :title, :description, :release_date, :director, :producer, :rotten_tomatoes_score

    @@all = []
    
    def initialize 
        @@all << self
    end

    def self.all 
        @@all
    end


end