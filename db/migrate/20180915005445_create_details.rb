class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.integer :price
      t.integer :ibc
      t.string :type_invoice
      t.integer :quantity
      t.integer :adjust
      t.text :description
      t.references :entity, foreign_key: true
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
