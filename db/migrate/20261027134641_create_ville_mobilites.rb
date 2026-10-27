class CreateVilleMobilites < ActiveRecord::Migration[8.1]
  def change
    create_table :ville_mobilites do |t|
      t.string :name
      t.references :resume, null: false, foreign_key: true

      t.timestamps
    end
  end
end
