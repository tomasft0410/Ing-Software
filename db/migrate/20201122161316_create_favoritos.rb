class CreateFavoritos < ActiveRecord::Migration[5.2]
  def change
    create_table :favoritos do |t|
      t.integer :id_user
      t.integer :id_carrete

      t.timestamps
    end
  end
end
