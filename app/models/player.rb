class Player < ActiveRecord::Base

attr_reader :players, :hands, :users


#Constructor initialize the current logged in players
def initialize
	#@users = count
	#@players = Array.new(@users,0) 
    @table = Table.new
	@hands= Array.new(3,0){Array.new(0,0)} #...so..[[0,0],[0,0],[0,0],[0,0]] 
end


def setPlayerHand
   
   @hands.each do |sub_array| 
      
   	 sub_array << @table.setCard  #first [player have two cards on hand i.e [first_card,second_card]
   end
   
   return @hands   
end



end


