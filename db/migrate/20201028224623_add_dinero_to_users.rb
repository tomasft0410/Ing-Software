class AddDineroToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dinero, :integer
  end
end
