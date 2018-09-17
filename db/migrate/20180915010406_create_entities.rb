class CreateEntities < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :service
      t.string :name_eps
      t.string :name_afp
      t.string :name_arl
      t.string :name_ccf
      t.decimal :level_arl
      t.string :code
      t.integer :percent
      t.string :type
      t.references :category, foreign_key: true
      t.references :state, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
