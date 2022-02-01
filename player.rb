class Player
  attr_accessor :id, :lives
  LIVES = 3
  
    def initialize(id)
      @id = id
      @lives = LIVES
    end
 end