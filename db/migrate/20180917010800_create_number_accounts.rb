class CreateNumberAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :number_accounts do |t|
      t.string :bank
      t.string :type_account
      t.string :owner_account
      t.references :identification, foreign_key: true

      t.timestamps
    end
  end
end
