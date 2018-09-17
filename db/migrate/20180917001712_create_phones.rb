class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :indicative
      t.integer :number
      t.boolean :type_phone
      t.references :address, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
