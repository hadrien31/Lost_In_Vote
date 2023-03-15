class QuestionnairesController < ApplicationController
  def new
    @questionnaire = Questionnaire.new
    @candidats = Candidat.all
  end

  def create
    @candidats = Candidat.all
    gauche = Candidat.where(partie: "La Democratie en Marche").first
    @gauche_score = Score.reset(candidat: gauche, user: current_user)
    @gauche_score.value = 0
    droite = Candidat.where(partie: "L'array Publique").first
    @droite_score = Score.reset(candidat: droite, user: current_user)
    @droite_score.value = 0
    extreme_gauche = Candidat.where(partie: "La France Indomptable").first
    @extreme_gauche_score = Score.reset(candidat: extreme_gauche, user: current_user)
    @extreme_gauche_score.value = 0
    extreme_droite = Candidat.where(partie: "Parti Nationaliste").first
    @extreme_droite_score = Score.reset(candidat: extreme_droite, user: current_user)
    @extreme_droite_score.value = 0
    centre = Candidat.where(partie: "Parti Liberal").first
    @centre_score = Score.reset(candidat: centre, user: current_user)
    @centre_score.value = 0

    if params["questionnaire"]["reponse1"]  == "1"
      @gauche_score.value += 1
      # @gauche_score.save
      @extreme_gauche_score.value += 1
    elsif params["questionnaire"]["reponse1"]  == "2"
      @centre_score.value += 1
      @droite_score.value += 1
      # @centre_score.save
    elsif params["questionnaire"]["reponse1"]  == "3"
      @extreme_droite_score.value += 1
    end

    if params["questionnaire"]["reponse2"]  == "1"
      @droite_score.value += 1
      @extreme_droite_score.value += 1
    elsif params["questionnaire"]["reponse2"]  == "2"
      @gauche_score.value += 1

    elsif params["questionnaire"]["reponse2"]  == "3"
      @extreme_gauche_score.value += 1
    end

    if params["questionnaire"]["reponse3"]  == "1"
      @extreme_droite_score.value += 1
      @extreme_gauche_score.value += 1
    elsif params["questionnaire"]["reponse3"]  == "3"
      @centre_score.value += 1
      @droite_score.value += 1
      @gauche_score.value += 1
    end

    if params["questionnaire"]["reponse4"]  == "1"
      @gauche_score.value += 1
      @extreme_gauche_score.value += 1
    elsif params["questionnaire"]["reponse4"]  == "2"
      @centre_score.value += 1
    elsif params["questionnaire"]["reponse4"]  == "3"
      @extreme_droite_score.value += 1
      @droite_score.value += 1
    end

    if params["questionnaire"]["reponse5"]  == "1"
      @gauche_score.value += 1
      @extreme_gauche_score.value += 1
    elsif params["questionnaire"]["reponse5"]  == "2"
      @centre_score.value += 1
    elsif params["questionnaire"]["reponse5"]  == "3"
      @extreme_droite_score.value += 1
      @droite_score.value += 1
    end

    if params["questionnaire"]["reponse6"]  == "1"
      @gauche_score.value += 1
      @extreme_gauche_score.value += 1
    elsif params["questionnaire"]["reponse6"]  == "2"
      @centre_score.value += 1
      @droite_score.value += 1
    elsif params["questionnaire"]["reponse6"]  == "3"
      @extreme_droite_score.value += 1
    end

    if params["questionnaire"]["reponse7"]  == "1"
      @extreme_gauche_score.value += 1
      @extreme_droite_score.value += 1
    elsif params["questionnaire"]["reponse7"]  == "2"
      @gauche_score.value += 1
    elsif params["questionnaire"]["reponse7"]  == "3"
      @centre_score.value += 1
      @droite_score.value += 1
    end

    if params["questionnaire"]["reponse8"]  == "1"
      @extreme_gauche_score.value += 1
      @gauche_score.value += 1
    elsif params["questionnaire"]["reponse8"]  == "2"
      @extreme_droite_score.value += 1
      @droite_score.value += 1
    elsif params["questionnaire"]["reponse8"]  == "3"
      @centre_score.value += 1
    end

    if params["questionnaire"]["reponse9"]  == "1"
      @extreme_gauche_score.value += 1
      @extreme_droite_score.value += 1
    elsif params["questionnaire"]["reponse9"]  == "2"
      @gauche_score.value += 1
    elsif params["questionnaire"]["reponse9"]  == "3"
      @centre_score.value += 1
      @droite_score.value += 1
    end

    # if params["questionnaire"]["reponse10"]  == "1"
    #   @extreme_gauche_score.value += 1
    #   @extreme_droite_score.value += 1
    # elsif params["questionnaire"]["reponse10"]  == "2"
    #   @gauche_score.value += 1
    # elsif params["questionnaire"]["reponse10"]  == "3"
    #   @centre_score.value += 1
    #   @droite_score.value += 1
    # end

    if params["questionnaire"]["reponse11"]  == "1"
      @droite_score.value += 1
      @centre_score.value += 1
      @extreme_droite_score.value += 1
    elsif params["questionnaire"]["reponse11"] == "3"
      @gauche_score.value += 1
      @extreme_gauche_score.value += 1
    end

    if params["questionnaire"]["reponse12"]  == "1"
      @extreme_gauche_score.value += 11
      @extreme_droite_score.value += 1
    elsif params["questionnaire"]["reponse12"]  == "2"
      @gauche_score.value += 1
    elsif params["questionnaire"]["reponse12"]  == "3"
      @centre_score.value += 1
      @droite_score.value += 1
    end
    @gauche_score.save
    @centre_score.save
    @extreme_gauche_score.save
    @extreme_droite_score.save
    @droite_score.save
    @winner = Candidat.winner_for_rank(current_user, 1)
    @second = Candidat.winner_for_rank(current_user, 2)
    @third = Candidat.winner_for_rank(current_user, 3)
    


    redirect_to root_path
  end
end
