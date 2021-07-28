class CreateContratos < ActiveRecord::Migration[5.2]
  def change
    create_table :contratos do |t|
      t.integer :id_carrete
      t.integer :id_servicio

      t.timestamps
    end
  end
end
