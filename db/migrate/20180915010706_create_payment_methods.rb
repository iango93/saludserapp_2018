class CreatePaymentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.string :other_detail
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
