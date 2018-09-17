class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :lastname
      t.string :username
      t.string :password_digest
      t.references :role, foreign_key: true
      t.date :birthdate
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
