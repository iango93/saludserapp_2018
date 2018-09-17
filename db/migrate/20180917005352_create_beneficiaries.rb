class CreateBeneficiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :beneficiaries do |t|
      t.string :first_name
      t.string :second_name
      t.string :lastname
      t.string :second_surname
      t.references :customer, foreign_key: true
      t.date :birthday
      t.string :relationship
      t.references :identification, foreign_key: true
      t.string :gender
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
