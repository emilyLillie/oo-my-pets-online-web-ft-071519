class Owner
  attr_reader :name, :species 
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
    @@pets = {:dogs => [], :cats => []}
  end
  
  def say_species
    "I am a human."
  end 
  
  def cats 
    @@pets[:cats]
  end 
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.length 
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
end