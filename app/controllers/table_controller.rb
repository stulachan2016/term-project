class TableController < ApplicationController
 helper_method :determine_hand
  # GET /table
  # GET /posts.json
  attr_reader :number_of_users, :hand1,:hand2, :table1

#Game logic goes in this table method
  #def table
  

  #end

  def table
    @number_of_users =  2  #GET THE NUMBER OF USERS LOGGED IN HERE
    @player1 = Player.new
    @player2 = Player.new
    @table_cards = Player.new
    @hand1  = @player1.setPlayerHand
    @hand2  = @player2.setPlayerHand
   # @hand3  = @player.setPlayerHand
   # @hand4  = @player.setPlayerHand
   @table1 = @table_cards.setPlayerHand

    #player1 first 2 cards
    @card1_p1 = @hand1[0][0]
    @card1_rank_p1 = @card1_p1[1]
    @card1_suit_p1 = @card1_p1[0]
    
    @card2_p1 = @hand1[1][0]
    @card2_rank_p1 = @card2_p1[1]
    @card2_suit_p1 = @card2_p1[0]

    #player2 first 2 cards
    @card1_p2 = @hand2[0][0]
    @card1_rank_p2 = @card1_p2[1]
    @card1_suit_p2 = @card1_p2[0]

    @card2_p2 = @hand2[1][0]
    @card2_rank_p2 = @card2_p2[1]
    @card2_suit_p2 = @card2_p2[0]

    #table1 first card
    @card1_t = @table1[0][0]
    @card1_rank_t = @card1_t[1]
    @card1_suit_t = @card1_t[0]

    #player1 third card which is table1 first card
#    @card3_p1 = @hand1[2][0]
 #   @card3_rank_p1 = @card1_t[1]
  #  @card3_suit_p1 = @card1_t[0]

    #player2 third card which is table1 first card
#    @card3_p2 = @hand2[2][0]
 #   @card3_rank_p2 = @card1_t[1]
  #  @card3_suit_p2 = @card1_t[0]

    #table1 second card
    @card2_t = @table1[1][0]
    @card2_rank_t = @card2_t[1]
    @card2_suit_t = @card2_t[0]

    #player1 fourth card which is table1 second card
#    @card4_p1 = @hand1[3][0]
 #   @card4_rank_p1 = @card2_t[1]
  #  @card4_suit_p1 = @card2_t[0]

    #player2 fourth card which is table1 second card
 #   @card4_p2 = @hand2[3][0]
  #  @card4_rank_p2 = @card2_t[1]
   # @card4_suit_p2 = @card2_t[0]

    #table1 third card
    @card3_t = @table1[2][0]
    @card3_rank_t = @card3_t[1]
    @card3_suit_t = @card3_t[0]

    #player1 fifth card which is table1 third card
#    @card5_p1 = @hand1[4][0]
 #   @card5_rank_p1 = @card3_t[1]
  #  @card5_suit_p1 = @card3_t[0]

    #player2 fifth card which is table1 third card
#    @card5_p2 = @hand2[4][0]
 #   @card5_rank_p2 = @card3_t[1]
  #  @card5_suit_p2 = @card3_t[0]

  end

  def determine_hand

   table = Table.new
   first = table.evalHand(@card1_p1, @card2_p1, @card1_t, @card2_t, @card3_t)
   second = table.evalHand(@card1_p2, @card2_p2, @card1_t, @card2_t, @card3_t)
   picCard = ["","","","","","","","","","", "","Jack","Quin","King","Ace"];

   h1 = first[0]
   max1 = first[1] + 1
   h2 = second[0]
   max2 = second[1] + 1
 

    if h1 > h2
      return 'player 1 wins with '+ table.getHandRank(h1)
    elsif h2 > h1
      return 'player 2 wins with ' +  table.getHandRank(h2)
    else
      if max1 >max2

        highCard = "";

        if (max1 > 9)
          highCard = picCard[max1];
          return "player 1 wins with "+ table.getHandRank(h1) + " " + highCard;
        else
          return "player 1 wins with "+ table.getHandRank(h1) + " " + max1.to_s
        end
        
      else

        highCard = "";

        if (max2 > 9)
          highCard = picCard[max2];
          return "player 1 wins with "+ table.getHandRank(h2) + " " + highCard;
        else
          return "player 1 wins with "+ table.getHandRank(h2) + " " + max2.to_s;
        end
      end
    end
 end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
   # @tables = Table.new
 end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    #@tables = Table.new(params)
    
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

  end



end
