class Candidat < ApplicationRecord
  has_many :questionnaires
  has_many :users, through: :questionnaires
  has_one_attached :photo
end
