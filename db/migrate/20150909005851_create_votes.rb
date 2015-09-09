class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :name
      t.integer :movie
      t.integer :event

      t.timestamps null: false
    end
  end
end
