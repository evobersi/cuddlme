class AddAvatarColumnToDogs < ActiveRecord::Migration
  def self.up
    add_attachment :dogs, :avatar
  end

  def self.down
    add_attachment :dogs, :avatar
  end
end
