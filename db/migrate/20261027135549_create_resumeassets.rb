class CreateResumeassets < ActiveRecord::Migration[8.1]
  def change
    create_table :resumeassets do |t|
      t.references :resume, null: false, foreign_key: true
      t.string :name
      t.text :details
      t.string :level

      t.timestamps
    end
  end
end
