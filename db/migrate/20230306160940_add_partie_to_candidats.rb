class AddPartieToCandidats < ActiveRecord::Migration[7.0]
  def change
    add_column :candidats, :name, :string
  end
end
