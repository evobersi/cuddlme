class AddDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.string :gender, null: false
      t.string :age, null: false
      t.string :preference, null: false 
      t.string :url   
    end
  end
end
  


