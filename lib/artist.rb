class Artist
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
       array = Song.all.map{|song|
       if song.artist == self then song end}
    end

    def add_song(song_instance)
        song_instance.artist = self
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
        Song.all.length
    end
end

