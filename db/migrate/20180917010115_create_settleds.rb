class CreateSettleds < ActiveRecord::Migration[5.2]
  def change
    create_table :settleds do |t|
      t.string :eps
      t.string :ccf
      t.string :afp
      t.string :arl
      t.references :customer, foreign_key: true
      t.references :company, foreign_key: true
      t.string :online_contribution
      t.integer :online_contributioin_number
      t.string :ccm
      t.string :rut
      t.string :bank_certification
      t.references :headquarter, foreign_key: true
      t.references :identification, foreign_key: true
      t.string :personal_document

      t.timestamps
    end
  end
end
