class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :email
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
