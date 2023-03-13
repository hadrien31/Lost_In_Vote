class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @candidats = Candidat.all
    @winner = @candidats.sort_by{ |candidat| candidat.compteur}.last
  end

  def glossaire
  end

  def check_list
  end
  
end
