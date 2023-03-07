class CandidatsController < ApplicationController
  def index
    @candidats = Candidat.all
  end

  def show
    @candidats = Candidat.find(params[:id])
  end
end

private

def candidat_params
  params.require(:candidat).permit(:first_name, :last_name, :partie, :photo)
end
