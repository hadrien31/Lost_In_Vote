class AddCareerToCandidats < ActiveRecord::Migration[7.0]
  def change
    add_column :candidats, :career, :text
  end
end
