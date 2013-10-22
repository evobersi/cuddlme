class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false

      t.timestamps
    end

    add_index :users, :email, unique: true

    change_table :dogs do |t|  
      t.references :user, null: false, index: true
  
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
end
