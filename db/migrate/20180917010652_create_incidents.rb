class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.integer :num_incident
      t.string :type_incident
      t.string :affair
      t.text :description
      t.references :customer, foreign_key: true
      t.references :company, foreign_key: true
      t.references :headquarter, foreign_key: true
      t.references :state, foreign_key: true

      t.timestamps
    end
  end
end
