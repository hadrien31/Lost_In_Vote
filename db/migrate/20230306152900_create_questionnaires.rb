class CreateQuestionnaires < ActiveRecord::Migration[7.0]
  def change
    create_table :questionnaires do |t|
      t.references :user, null: false, foreign_key: true
      t.references :candidat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
