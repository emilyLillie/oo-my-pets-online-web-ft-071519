class Owner
  attr_reader :name, :species 
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end
  
  def say_species
    "I am a human."
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
  
  def buy_cat(name)
    cat = Cat.new(name, self.name)
    cat.owner = self 
  end 
  
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def buy_dog(name)
    dog = Dog.new(name, self.name)
    dog.owner = self 
  end 
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def walk_dogs
    Dog.mood = "happy"
  end 
  
end