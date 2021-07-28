class CreateValoracionCarretes < ActiveRecord::Migration[5.2]
  def change
    create_table :valoracion_carretes do |t|
      t.string :usuario
      t.integer :puntuacion
      t.string :carrete

      t.timestamps
    end
  end
end
