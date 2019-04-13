# require_relative '../lib/concerns/memorable'
module Memorable
  module ClassMethods
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
    def add_song(song)
    @songs << song
    song.artist = self unless song.artist
  end

  end
  
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end