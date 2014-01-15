class AddAvatarToColumnUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :avatar
  end

  def self.down
    add_attachment :users, :avatar
  end
end
