class CreateCandidats < ActiveRecord::Migration[7.0]
  def change
    create_table :candidats do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
