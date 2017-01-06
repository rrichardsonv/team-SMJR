class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.string :author_id
      t.integer :to_spite_matt_id

      t.timestamps
    end
  end
end
