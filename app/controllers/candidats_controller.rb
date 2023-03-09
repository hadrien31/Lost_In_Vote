class CandidatsController < ApplicationController
  def index
    @candidats = Candidat.all
  end

  def show
    @candidat = Candidat.find(params[:id])
  end

  private

  def candidat_params
    params.require(:candidat).permit(:first_name, :last_name, :partie, :photo)
  end
end
