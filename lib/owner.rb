class Owner
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    name.freeze
  end
  
  
  
end