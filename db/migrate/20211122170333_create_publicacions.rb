class CreatePublicacions < ActiveRecord::Migration[6.1]
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.text :contenido
      t.references :blog1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
