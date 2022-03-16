class CreateGeneros < ActiveRecord::Migration[7.0]
  def change
    create_table :generos do |t|
      t.string :nombre
      t.string :imagen
      t.references :personaje, null: false, foreign_key: true

      t.timestamps
    end
  end
end
