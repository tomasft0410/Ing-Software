class CreateComentarioCarretes < ActiveRecord::Migration[5.2]
  def change
    create_table :comentario_carretes do |t|
      t.integer :id_carrete
      t.integer :id_user
      t.string :contenido

      t.timestamps
    end
  end
end
