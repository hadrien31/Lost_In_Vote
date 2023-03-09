class Candidat < ApplicationRecord
  has_one_attached :photo
  has_many :questionnaire
end
