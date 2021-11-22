class CreateBlog1s < ActiveRecord::Migration[6.1]
  def change
    create_table :blog1s do |t|
      t.string :nombre
      t.string :descripcion
      t.string :text

      t.timestamps
    end
  end
end
