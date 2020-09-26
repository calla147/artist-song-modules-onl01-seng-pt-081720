require 'pry'

class Song
  # The extend keyword is responsible for defining the method as a
    # class method vs. an instance method (include keyword)
  extend Memorable 
  extend Findable
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

    def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

 end