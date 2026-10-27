class CreateMetchallenges < ActiveRecord::Migration[8.1]
  def change
    create_table :metchallenges do |t|
      t.integer :challenge_id
      t.integer :user_id
      t.text :details
      t.string :pic

      t.timestamps
    end
  end
end
