class CreateValoracionServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :valoracion_servicios do |t|
      t.string :usuario
      t.integer :puntuacion
      t.string :servicio

      t.timestamps
    end
  end
end
