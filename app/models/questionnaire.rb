class Questionnaire < ApplicationRecord
  belongs_to :user
  belongs_to :candidat
  has_many :scores
end
