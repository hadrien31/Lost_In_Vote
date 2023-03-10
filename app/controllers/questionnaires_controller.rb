class QuestionnairesController < ApplicationController
  def new
    @questionnaire = Questionnaire.new
    @candidats = Candidat.all
  end

  def create
    @candidats = Candidat.all
    @gauche = Candidat.where(partie: "La Democratie en Marche").first
    @gauche.compteur = 0
    @droite = Candidat.where(partie: "L'array Publique").first
    @droite.compteur = 0
    @extreme_gauche = Candidat.where(partie: "La France Indomptable").first
    @extreme_gauche.compteur = 0
    @extreme_droite = Candidat.where(partie: "Parti Nationaliste").first
    @extreme_droite.compteur = 0
    @centre = Candidat.where(partie: "Parti Liberal").first
    @centre.compteur = 0

    if params["questionnaire"]["reponse1"]  == "1"
      @gauche.compteur += 1
      # @gauche.save
      @extreme_gauche.compteur += 1
    elsif params["questionnaire"]["reponse1"]  == "2"
      @centre.compteur += 1
      @droite.compteur += 1
      # @centre.save
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

    # if params["questionnaire"]["reponse10"]  == "1"
    #   @extreme_gauche.compteur += 1
    #   @extreme_droite.compteur += 1
    # elsif params["questionnaire"]["reponse10"]  == "2"
    #   @gauche.compteur += 1
    # elsif params["questionnaire"]["reponse10"]  == "3"
    #   @centre.compteur += 1
    #   @droite.compteur += 1
    # end

    if params["questionnaire"]["reponse11"]  == "1"
      @droite.compteur += 1
      @centre.compteur += 1
      @extreme_droite.compteur += 1
    elsif params["questionnaire"]["reponse11"] == "3"
      @gauche.compteur += 1
      @extreme_gauche.compteur += 1
    end

    if params["questionnaire"]["reponse12"]  == "1"
      @extreme_gauche.compteur += 1
      @extreme_droite.compteur += 1
    elsif params["questionnaire"]["reponse12"]  == "2"
      @gauche.compteur += 1
    elsif params["questionnaire"]["reponse12"]  == "3"
      @centre.compteur += 1
      @droite.compteur += 1
    end
    @gauche.save
    @centre.save
    @extreme_gauche.save
    @extreme_droite.save
    @droite.save
    @winner = @candidats.sort_by{ |candidat| candidat.compteur}.last




    raise
  end
end
