require 'pry'

class Owner
  attr_accessor :cat, :dog, :fish, :pets, :all, :name, :mood
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
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    self.pets.each {|type, pets| pets.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
