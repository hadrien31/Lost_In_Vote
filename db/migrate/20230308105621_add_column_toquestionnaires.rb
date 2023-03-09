class AddColumnToquestionnaires < ActiveRecord::Migration[7.0]
  def change
    add_column :questionnaires, :reponse1, :string
    add_column :questionnaires, :reponse2, :string
    add_column :questionnaires, :reponse3, :string
    add_column :questionnaires, :reponse4, :string
    add_column :questionnaires, :reponse5, :string
    add_column :questionnaires, :reponse6, :string
    add_column :questionnaires, :reponse7, :string
  end
end
