class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.string :gender, null: false
      t.string :age, null: false
      t.string :preference, null: false 
      t.string :url 

      t.references :user, null: false, index: true
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE dogs
          ADD CONSTRAINT fk_dogs_users
          FOREIGN KEY (user_id)
          REFERENCES users(id)
        SQL
      end
    end
  end
end
