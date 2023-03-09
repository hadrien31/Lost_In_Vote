class QuestionnairesController < ApplicationController
  def new
    @questionnaire = Questionnaire.new
    @candidats = Candidat.all
  end

  def create
    raise
  end
end
