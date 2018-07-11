class User < ApplicationRecord
  has_many :user_cards
  has_many :cards, through: :user_cards
  

  def unowned_cards
    binding.pry
    (Card.all.map{|c| c.id} - self.card_ids).map{|id| Card.find(id)}
  end
end
