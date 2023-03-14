class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.references :user, null: false, foreign_key: true
      t.references :candidat, null: false, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
