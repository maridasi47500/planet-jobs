class AddColumnStartedAtToMetChallenges < ActiveRecord::Migration[8.1]
  def change
    add_column :metchallenges, :started_at, :datetime
    add_column :metchallenges, :met_at, :datetime
  end
end
