class Owner
  attr_accessor :cat, :dog, :fish
  @@all = []

  def initialize(owner)
    @owner = owner
  end

  def self.all
    @@all << self
    @@all
  end

end
