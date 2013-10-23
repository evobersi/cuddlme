class AddParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :state
      t.float  :latitude
      t.float  :longitude
      t.boolean :gmaps
      t.timestamps
    end
  end
end
