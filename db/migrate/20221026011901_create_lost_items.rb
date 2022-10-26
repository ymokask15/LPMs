class CreateLostItems < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_items do |t|
      t.string :item_name
      t.date :date_picked
      t.string :where_picked
      t.string :feature
      t.date :storage_period
      t.integer :category

      t.timestamps
    end
  end
end
