class CreateLog1s < ActiveRecord::Migration[5.2]
  def change
    create_table :log1s do |t|
      t.text :data
      t.integer :data_trans
      t.string :user_hash

      t.timestamps
    end
  end
end
