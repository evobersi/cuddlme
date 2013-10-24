class CreateParksUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :parks_users, id: false do |t|
      t.integer :park_id
      t.integer :user_id
    end
  end
end
