class CreateCarretes < ActiveRecord::Migration[5.2]
  def change
    create_table :carretes do |t|
      t.string :direccion
      t.integer :costo_total
      t.string :estado_busqueda
      t.string :imagen
      t.text :descripcion
      t.string :titulo
      t.integer :max_asistentes

      t.timestamps
    end
  end
end
