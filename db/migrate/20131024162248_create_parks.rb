class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|  
      t.string :name, null: false 
      t.string :borough
      t.float  :latitude
      t.float  :longitude
      t.string :address

      t.timestamps
    end
  end
end
