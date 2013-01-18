class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :File
      t.integer :Amount
      t.string :Company

      t.timestamps
    end
  end
end
