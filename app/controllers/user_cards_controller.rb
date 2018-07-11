class UserCardsController < ApplicationController

  def create
    uc = UserCard.new(user_card_params)

    if uc.save
      redirect_to user_path(uc.user)
    end

  end

  private 
    def user_card_params
      params.require(:user_card).permit(:user_id, :card_id, :condition, :date_acquired)
    end
end
