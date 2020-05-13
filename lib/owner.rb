require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    self.pets = {
      :fishes => [], :dogs => [], :cats => []
    }
    save
  end

  def save
    @@all << self
  end

#Class methods

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

#instance methods

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish.owner = self
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    new_cat.owner = self
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    new_dog.owner = self
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do | animal, pets |
      pets.each { |pet| pet.mood = "nervous"}
    end
    self.pets = {
      :fishes => [], :dogs => [], :cats => []
    }
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
