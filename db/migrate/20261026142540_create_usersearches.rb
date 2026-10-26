class CreateUsersearches < ActiveRecord::Migration[8.1]
  def change
    create_table :usersearches do |t|
      t.references :jobsearch, null: false, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
