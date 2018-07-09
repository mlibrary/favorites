class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :item_id
      t.integer :user_id

      t.timestamps
    end
    add_index :favorites, :user_id
  end
end
