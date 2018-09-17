class CreateAccountnames < ActiveRecord::Migration[5.2]
  def change
    create_table :accountnames do |t|
    	t.string :name
      t.string :type_account
      t.references :address, foreign_key: true
      t.references :identification, foreign_key: true
      t.references :email, foreign_key: true

      t.timestamps
    end
  end
end
