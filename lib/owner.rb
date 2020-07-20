class Owner
  # code goes here
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []

  def initialize(name)
  	@name = name 
  	@species = 'human'
    @cats = []
    @dogs = []
  	@@all << self
  end

  def say_species 
  	"I am a #{@species}."
  end

  def self.all 
  	@@all 
  end

  def self.count 
  	@@all.size
  end

  def self.reset_all
  	@@all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def cats 
    @cats 
  end

  def dogs 
    @dogs 
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats 
    self.cats.each do |cat|
      cat.mood = 'happy'
    end
  end

  def list_pets 
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end

  def sell_pets
    @cats.each do |cat|
      cat.owner = nil 
      cat.mood = 'nervous'
    end

    @dogs.each do |dog|
      dog.owner = nil
      dog.mood = 'nervous'
    end

    @cats = []
    @dogs = []
  end

end