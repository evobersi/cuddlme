class User < ActiveRecord::Base
  has_many :dogs
  has_and_belongs_to_many :parks

  has_secure_password
  
end


