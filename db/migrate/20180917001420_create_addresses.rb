class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :neighborhood
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
