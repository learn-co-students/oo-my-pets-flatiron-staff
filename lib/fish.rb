class Fish
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.find_by_name(name)
    self.all.find { |fish| fish.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new(name)
  end

end
