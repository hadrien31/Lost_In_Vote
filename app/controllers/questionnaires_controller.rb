class QuestionnairesController < ApplicationController
  def new
    @questionnaire = Questionnaire.new
    @candidats = Candidat.all
  end

  def create
    @candidats = Candidat.all
    @gauche = Candidat.where(partie: "La Democratie En Marche").first
    @droite = Candidat.where(partie: "L'Array Publique").first
    @extreme_gauche = Candidat.where(partie: "La France Indomptable").first
    @extreme_droite = Candidat.where(partie: "Partie Nationaliste").first
    @centre = Candidat.where(first_name: "PAUL").first

    if params["questionnaire"]["reponse1"]  == "1"
      @gauche.compteur += 1
      @extreme_gauche.compteur += 1
    elsif params["questionnaire"]["reponse1"]  == "2"
      @centre.compteur += 1
      @droite.compteur += 1
    elsif params["questionnaire"]["reponse1"]  == "3"
      @extreme_droite.compteur += 1
    end

    if params["questionnaire"]["reponse2"]  == "1"
      @droite.compteur += 1
      @extreme_droite.compteur += 1
    elsif params["questionnaire"]["reponse2"]  == "2"
      @gauche.compteur += 1

    elsif params["questionnaire"]["reponse2"]  == "3"
      @extreme_gauche.compteur += 1
    end

    if params["questionnaire"]["reponse3"]  == "1"
      @extreme_droite.compteur += 1
      @extreme_gauche.compteur += 1
    elsif params["questionnaire"]["reponse3"]  == "2"

    elsif params["questionnaire"]["reponse3"]  == "3"
      @centre.compteur += 1
      @droite.compteur += 1
      @gauche.compteur += 1
    end

    if params["questionnaire"]["reponse4"]  == "1"
      @gauche.compteur += 1
      @extreme_gauche.compteur += 1
    elsif params["questionnaire"]["reponse4"]  == "2"
      @centre.compteur += 1
    elsif params["questionnaire"]["reponse4"]  == "3"
      @extreme_droite.compteur += 1
      @droite.compteur += 1
    end

    if params["questionnaire"]["reponse5"]  == "1"
      @gauche.compteur += 1
      @extreme_gauche.compteur += 1
    elsif params["questionnaire"]["reponse5"]  == "2"
      @centre.compteur += 1
    elsif params["questionnaire"]["reponse5"]  == "3"
      @extreme_droite.compteur += 1
      @droite.compteur += 1
    end

    if params["questionnaire"]["reponse6"]  == "1"
      @gauche.compteur += 1
      @extreme_gauche.compteur += 1
    elsif params["questionnaire"]["reponse6"]  == "2"
      @centre.compteur += 1
      @droite.compteur += 1
    elsif params["questionnaire"]["reponse6"]  == "3"
      @extreme_droite.compteur += 1
    end

    if params["questionnaire"]["reponse7"]  == "1"
      @extreme_gauche.compteur += 1
      @extreme_droite.compteur += 1
    elsif params["questionnaire"]["reponse7"]  == "2"
      @gauche.compteur += 1
    elsif params["questionnaire"]["reponse7"]  == "3"
      @centre.compteur += 1
      @droite.compteur += 1
    end

    if params["questionnaire"]["reponse8"]  == "1"
      @extreme_gauche.compteur += 1
      @gauche.compteur += 1
    elsif params["questionnaire"]["reponse8"]  == "2"
      @extreme_droite.compteur += 1
      @droite.compteur += 1
    elsif params["questionnaire"]["reponse8"]  == "3"
      @centre.compteur += 1
    end

    if params["questionnaire"]["reponse9"]  == "1"
      @extreme_gauche.compteur += 1
      @extreme_droite.compteur += 1
    elsif params["questionnaire"]["reponse9"]  == "2"
      @gauche.compteur += 1
    elsif params["questionnaire"]["reponse9"]  == "3"
      @centre.compteur += 1
      @droite.compteur += 1
    end

    # if params["questionnaire"]["reponse7"]  == "1"
    #   @extreme_gauche.compteur += 1
    #   @extreme_droite.compteur += 1
    # elsif params["questionnaire"]["reponse7"]  == "2"
    #   @gauche.compteur += 1
    # elsif params["questionnaire"]["reponse7"]  == "3"
    #   @centre.compteur += 1
    #   @droite.compteur += 1
    # end

    if params["questionnaire"]["reponse7"]  == "1"
      @droite.compteur += 1
      @centre.compteur += 1
      @extreme_droite.compteur += 1
    elsif params["questionnaire"]["reponse7"] == "3"
      @gauche.compteur += 1
      @extreme_gauche.compteur += 1
    end









    raise
  end
end
