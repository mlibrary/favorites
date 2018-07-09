class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :datastore
      t.string :uid
      t.string :title
      t.string :author
      t.string :date
      t.text :url
      t.text :metadata

      t.timestamps
    end
  end
end
