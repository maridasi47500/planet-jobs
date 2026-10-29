class CreateUserapplications < ActiveRecord::Migration[8.1]
  def change
    create_table :userapplications do |t|
      t.integer :user_id
      t.references :joboffer, null: false, foreign_key: true
      t.references :resume, null: false, foreign_key: true
      t.text :letter

      t.timestamps
    end
  end
end
