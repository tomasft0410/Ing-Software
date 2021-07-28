class CreateOferts < ActiveRecord::Migration[5.2]
  def change
    create_table :oferts do |t|
      t.integer :bid
      t.integer :id_carrete
      t.string :email

      t.timestamps
    end
  end
end
