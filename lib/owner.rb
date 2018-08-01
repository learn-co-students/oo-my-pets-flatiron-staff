require 'pry'

class Owner
  attr_accessor :cat, :dog, :fish, :pets, :all, :name
  attr_reader
  @@all = []

  def initialize(owner)
    @owner = owner
    @pets = {
      cats: [],
      dogs: [],
      fishes: []
    }
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    "human"
  end

  def say_species
    "I am a human."
  end

  def name
    self.name = @name
  end

  def buy_fish(name)
  end


end
