class Hand < Card
  
    @cards = []
    def initialize(cards = [])
      @cards = cards
    end

    def decks(cards)
      ranks = %w{1 2 3 4 5 6 7 8 9 10 11 12 13}
      suits = %w{Spades Hearts Diamonds Clubs}
      suits.each do |suit|
        ranks.size.times do |i|
          cards[Card.new(ranks[i], suit, i+1)]
        end
      end
      cards
    end

    def draw
      decks(deck = [])
      5.upto do |i|
        rand_card = rand(0..51)
        @cards[i] = deck[rand_card]
        deck[rand_card].pop
      end
      @cards
    end

  end
