class Card

  attr_reader :rank, :suit, :index

  def initialize(rank, suit, index)
    @rank = rank
    @suit = suit
    @index = index
  end

end