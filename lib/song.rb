require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)) do |genre_count, genre|
            genre_count[genre] += 1
            genre_count
        end
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) do |artist_count, artist|
            artist_count[artist] += 1
            artist_count
        end
    end
end