class Genre

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
       self.songs.map do |song|
            song.artist
       end.uniq
    end

    def self.all
        @@all
    end
end
