class CreatePublicacions < ActiveRecord::Migration[6.1]
  def change
    create_table :publicacions do |t|
      t.string :titulo
      t.string :contenido
      t.string :text
      t.references :blog1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
