class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
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
        genre_hash = {}
        @@genres.collect do |genre|
            if genre_hash[genre] == nil
                genre_hash[genre] = 1
            else
                genre_hash[genre] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.collect do |artist|
            if artist_hash[artist] == nil
                artist_hash[artist] = 1
            else
                artist_hash[artist] += 1
            end
        end
        artist_hash
    end


end