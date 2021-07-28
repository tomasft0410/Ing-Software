class CreateOperates < ActiveRecord::Migration[5.2]
  def change
    create_table :operates do |t|
      t.integer :id_servicio
      t.integer :id_lugar

      t.timestamps
    end
  end
end
