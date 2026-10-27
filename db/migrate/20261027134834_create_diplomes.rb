class CreateDiplomes < ActiveRecord::Migration[8.1]
  def change
    create_table :diplomes do |t|
      t.date :datedebut
      t.date :datefin
      t.string :nom_diplome
      t.boolean :until_today
      t.string :nom_ecole
      t.string :lieu
      t.text :details
      t.references :resume, null: false, foreign_key: true

      t.timestamps
    end
  end
end
