class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.date :date_admission
      t.string :first_name
      t.string :second_name
      t.string :lastname
      t.string :second_surname
      t.string :civil_status
      t.string :gender
      t.boolean :pregnancy
      t.integer :gestation_weeks
      t.string :current_work
      t.references :identification, foreign_key: true
      t.references :address, foreign_key: true
      t.references :email, foreign_key: true
      t.references :staff, foreign_key: true
      t.date :birthdate
      t.string :advertising_medium
      t.references :account, foreign_key: true
      t.references :company, foreign_key: true
      t.boolean :arrival_card_ccf
      t.boolean :arrival_card_arl
      t.integer :ibc
      t.references :state, foreign_key: true
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
