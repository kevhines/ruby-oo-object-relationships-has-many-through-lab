require "pry"
class Artist

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end

    end

    def genres
        
        self.songs.map { |song| 
            song.genre
        }.uniq
        
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def self.all
        @@all
    end



end