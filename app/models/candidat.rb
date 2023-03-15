class Candidat < ApplicationRecord
  has_many :questionnaires
  has_many :users, through: :questionnaires
  has_many :scores
  has_one_attached :photo

  def self.winner_for(user)
    return nil unless user

    # On recuper le score de chaque candidat pour ce user
    scores = Candidat.all.map do |candidat|
      Score.find_by(candidat: candidat, user: user)
    end.compact
    return nil if scores.length < 5

    # ou prend le plus haut score
    scores_sorted = scores.sort_by(&:value)
    # on recupère le candidat correspondant
    return scores_sorted.last.candidat
  end

  def self.second_for(user)
    return nil unless user

    # On recuper le score de chaque candidat pour ce user
    scores = Candidat.all.map do |candidat|
      Score.find_by(candidat: candidat, user: user)
    end.compact
    return nil if scores.length < 5

    # ou prend le plus haut score
    scores_sorted = scores.sort_by(&:value)
    # on recupère le candidat correspondant
    return scores_sorted[3].candidat
  end

  def self.third_for(user)
    return nil unless user

    # On recuper le score de chaque candidat pour ce user
    scores = Candidat.all.map do |candidat|
      Score.find_by(candidat: candidat, user: user)
    end.compact
    return nil if scores.length < 5

    # ou prend le plus haut score
    scores_sorted = scores.sort_by(&:value)
    # on recupère le candidat correspondant
    return scores_sorted[2].candidat
  end

end
