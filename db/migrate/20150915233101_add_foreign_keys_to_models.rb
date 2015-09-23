class AddForeignKeysToModels < ActiveRecord::Migration
  def change
    add_column :movies, :event_id, :integer
    add_column :votes, :movie_id, :integer
    add_column :votes, :event_id, :integer
  end
end
