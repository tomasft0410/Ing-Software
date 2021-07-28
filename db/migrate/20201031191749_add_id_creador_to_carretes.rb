class AddIdCreadorToCarretes < ActiveRecord::Migration[5.2]
  def change
    add_column :carretes, :id_creador, :int
  end
end
