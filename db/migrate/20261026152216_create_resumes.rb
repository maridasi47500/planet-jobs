class CreateResumes < ActiveRecord::Migration[8.1]
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.string :poste_convoite
      t.string :nom_complet
      t.string :ville
      t.string :permis
      t.string :projet_professionnel
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
