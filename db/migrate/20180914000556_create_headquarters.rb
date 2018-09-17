class CreateHeadquarters < ActiveRecord::Migration[5.2]
  def change
    create_table :headquarters do |t|
      t.string :name
      t.integer :code
      t.references :company, foreign_key: true
      t.references :address, foreign_key: true
      t.references :email, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
