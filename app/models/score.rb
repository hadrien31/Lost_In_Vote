class Score < ApplicationRecord
  belongs_to :user
  belongs_to :candidat

  def self.reset(args)
    existing_score = find_by(args)
    existing_score&.destroy
    Score.create(args)
  end
end
