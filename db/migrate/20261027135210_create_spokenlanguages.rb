class CreateSpokenlanguages < ActiveRecord::Migration[8.1]
  def change
    create_table :spokenlanguages do |t|
      t.references :resume, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true
      t.string :level
      t.text :details

      t.timestamps
    end
  end
end
