class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
    @species = "human"

    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(pet_name)
    @pets[:fishes] << Fish.new(pet_name)
  end

  def buy_cat(pet_name)
    @pets[:cats] << Cat.new(pet_name)
  end

  def buy_dog(pet_name)
    @pets[:dogs] << Dog.new(pet_name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |pet_type, pet_detail|
      pet_detail.collect do |m|
        m.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end



end
