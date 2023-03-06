class RemovePartieFromCandidats < ActiveRecord::Migration[7.0]
  def change
    remove_column :candidats, :name, :string
  end
end
