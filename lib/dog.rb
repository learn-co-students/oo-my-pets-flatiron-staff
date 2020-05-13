class Dog
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.new(name)
  end

end
