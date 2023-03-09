class AddCompteurToCandidats < ActiveRecord::Migration[7.0]
  def change
    add_column :candidats, :compteur, :integer
  end
end
