class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :servicio
      t.string :usuario
      t.string :contenido
      t.datetime :fecha_hora

      t.timestamps
    end
  end
end
