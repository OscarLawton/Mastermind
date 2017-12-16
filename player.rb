class Player
  
  
  @@playerCount = 0
  @name = ""
  
  def initialize
    @@playerCount += 1
    puts "Enter Player-"+@@playerCount.to_s+"'s name: "
    name = gets.strip.capitalize
    
    @name = name
  end
  
  def getName
    @name
  end
  
end