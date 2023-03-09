class AddProgrammToCandidat < ActiveRecord::Migration[7.0]
  def change
    add_column :candidats, :programm, :text
  end
end
