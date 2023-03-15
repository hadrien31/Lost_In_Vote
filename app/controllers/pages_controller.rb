class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @candidats = Candidat.all
    @winner = Candidat.winner_for_rank(current_user, 1)
    @second = Candidat.winner_for_rank(current_user, 2)
    @third = Candidat.winner_for_rank(current_user, 3)
  end

  def glossaire
  end

  def check_list
  end

end
