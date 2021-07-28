class CreateServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :max_capacidad
      t.string :imagen
      t.integer :precio
      t.string :status

      t.timestamps
    end
  end
end
