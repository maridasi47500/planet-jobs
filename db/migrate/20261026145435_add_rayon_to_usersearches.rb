class AddRayonToUsersearches < ActiveRecord::Migration[8.1]
  def change
    add_column :usersearches, :rayon, :string
  end
end
