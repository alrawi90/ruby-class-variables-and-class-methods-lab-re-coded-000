class Song
  @@count=0
  @@artists=[]
  @@genres=[]
  def initialize(name,artist,genre)
    #attr_accessor :name
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@artists.push(artist)
    @@genres.push(genre)
  end
  def name
    @name
  end
  def name=(name)
    @name=name
  end
  def artist
    @artist
  end
  def artist=(artist)
    @artist=artist
  end
  def genre
    @genre
  end
  def genre=(genre)
    @genre=genre
  end
  def self.count
  return  @@count
  end
  def self.artists
  return  @@artists.uniq
  end
  def self.genres
  return  @@genres.uniq
  end
  def self.genre_count
    hash={}
    @@genres.each do |genre_|
      if hash.key?(genre_)
        hash[genre_] +=1
      else
          hash[genre_] =1
     end
    end
    return hash

  end
  def self.artist_count
    hash={}
    @@artists.each do |artist_|
      if hash.key?(artist_)
        hash[artist_] +=1
      else
          hash[artist_] =1
     end
    end
    return hash

  end
end
