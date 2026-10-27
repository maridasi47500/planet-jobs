class CreateJobs < ActiveRecord::Migration[8.1]
  def change
    create_table :jobs do |t|
      t.references :resume, null: false, foreign_key: true
      t.date :datedebut
      t.date :datefin
      t.boolean :until_today
      t.string :mission
      t.string :entreprise
      t.string :lieu
      t.text :details

      t.timestamps
    end
  end
end
