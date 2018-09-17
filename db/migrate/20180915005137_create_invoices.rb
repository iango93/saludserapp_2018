class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.references :customer, foreign_key: true
      t.references :company, foreign_key: true
      t.references :headquarter, foreign_key: true
      t.references :payment_method, foreign_key: true
      t.references :staff, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
