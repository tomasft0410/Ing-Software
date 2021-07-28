class AddEdadToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :edad, :integer
  end
end
