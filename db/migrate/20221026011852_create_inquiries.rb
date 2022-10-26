class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.integer :matter
      t.string :detail

      t.timestamps
    end
  end
end
