class CreateChallenges < ActiveRecord::Migration[8.1]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.time :length_of_time
      t.string :pic

      t.timestamps
    end
  end
end
