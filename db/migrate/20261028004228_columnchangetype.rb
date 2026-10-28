class Columnchangetype < ActiveRecord::Migration[8.1]
  def change
    change_column :challenges, :length_of_time, :string
  end
end
