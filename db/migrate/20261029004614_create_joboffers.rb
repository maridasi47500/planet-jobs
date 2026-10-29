class CreateJoboffers < ActiveRecord::Migration[8.1]
  def change
    create_table :joboffers do |t|
      t.string :title
      t.text :content
      t.references :company, null: false, foreign_key: true
      t.string :place_name

      t.timestamps
    end
  end
end
