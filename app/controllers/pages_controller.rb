class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @candidats = Candidat.all
    @winner = Candidat.winner_for(current_user)
  end

  def glossaire
  end

  def check_list
  end

end
