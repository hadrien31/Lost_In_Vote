class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @candidats = Candidat.all
  end

  def check_list
  end
  
end
