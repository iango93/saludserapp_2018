class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :second_name
      t.string :lastname
      t.string :second_suname
      t.string :current_work
      t.references :email, foreign_key: true
      t.string :advertising_medium
      t.references :address, foreign_key: true
      t.boolean :active
      t.integer :customer_id

      t.timestamps
    end
  end
end
