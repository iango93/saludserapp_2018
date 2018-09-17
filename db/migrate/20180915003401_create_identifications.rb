class CreateIdentifications < ActiveRecord::Migration[5.2]
  def change
    create_table :identifications do |t|
      t.string :type
      t.bigint :number
      t.integer :check_digit
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
