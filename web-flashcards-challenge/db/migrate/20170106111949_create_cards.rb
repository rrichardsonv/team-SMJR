class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :question
      t.string :answer
      t.integer :to_spite_matt_id

      t.timestamps
    end
  end
end
