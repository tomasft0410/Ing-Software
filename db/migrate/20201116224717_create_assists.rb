class CreateAssists < ActiveRecord::Migration[5.2]
  def change
    create_table :assists do |t|
      t.integer :id_user
      t.integer :id_carrete

      t.timestamps
    end
  end
end
