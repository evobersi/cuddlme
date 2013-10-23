class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name, null: false
      t.string :boroughs, null: false
      t.float  :latitude
      t.float  :longitude
      t.timestamps
    end
  end
end
