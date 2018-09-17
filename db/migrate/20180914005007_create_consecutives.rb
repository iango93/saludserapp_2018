class CreateConsecutives < ActiveRecord::Migration[5.2]
  def change
    create_table :consecutives do |t|
      t.string :suffix
      t.integer :folio_company
      t.references :company, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
