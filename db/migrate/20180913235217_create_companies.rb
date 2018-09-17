class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :legal_representative
      t.bigint :cc_legal_representative
      t.date :creation_date
      t.string :economic_activity
      t.integer :code_economic_activity
      t.references :email, foreign_key: true
      t.references :identification, foreign_key: true
      t.references :address, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
