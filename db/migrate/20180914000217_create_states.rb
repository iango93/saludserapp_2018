class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :state_
      t.integer :code

      t.timestamps
    end
  end
end
