class AddIdCreadorToServicios < ActiveRecord::Migration[5.2]
  def change
    add_column :servicios, :id_creador, :int
  end
end
