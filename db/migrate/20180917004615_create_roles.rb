class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.integer :role_staff
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
