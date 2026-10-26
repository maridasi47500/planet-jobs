class CreateJobsearches < ActiveRecord::Migration[8.1]
  def change
    create_table :jobsearches do |t|
      t.string :what
      t.string :where

      t.timestamps
    end
  end
end
