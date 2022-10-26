class CreateLends < ActiveRecord::Migration[6.1]
  def change
    create_table :lends do |t|
      t.string :name
      t.integer :loaned_out
      t.date :loaned_date
      t.date :return_date

      t.timestamps
    end
  end
end
