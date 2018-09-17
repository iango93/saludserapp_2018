class CreateFolios < ActiveRecord::Migration[5.2]
  def change
    create_table :folios do |t|
      t.bigint :folio
      t.references :headquarter, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
