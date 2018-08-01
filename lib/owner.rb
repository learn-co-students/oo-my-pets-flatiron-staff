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
    @fish = Fish.new(name)
    @pets[:fishes] << @fish
  end

  def buy_cat(name)
    @cat = Cat.new(name)
    @pets[:cats] << @cat
  end

  def buy_dog(name)
    @dog = Dog.new(name)
    @pets[:dogs] << @dog
  end

  def walk_dogs
    @pets[:dogs].mood = "happy"
  end


end
