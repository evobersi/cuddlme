class AddZipcodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zipcode, :decimal, precision: 5, scale: 0, null: false
  end
end
