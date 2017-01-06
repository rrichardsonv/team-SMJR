class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :player_id
      t.integer :deck_id
      t.integer :to_spite_matt_id

      t.timestamps
    end
  end
end
