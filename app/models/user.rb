class User < ActiveRecord::Base
  validates :password_digest, :zipcode, :email, presence: true
  has_many :dogs
  has_and_belongs_to_many :parks
  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ["missing1.png", "missing2.png"].sample
end


