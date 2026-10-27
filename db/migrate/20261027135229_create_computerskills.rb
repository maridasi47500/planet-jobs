class CreateComputerskills < ActiveRecord::Migration[8.1]
  def change
    create_table :computerskills do |t|
      t.string :name
      t.string :level
      t.text :details
      t.references :resume, null: false, foreign_key: true

      t.timestamps
    end
  end
end
