class Song

    attr_accessor :artist
    attr_reader :name

    @@all = []

    def initialize(song_name)
        @name = song_name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def artist_name
        if @artist then return @artist.name end
        nil
    end


end
