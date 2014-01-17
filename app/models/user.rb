class User < ActiveRecord::Base
  validates :name, :length => { :minimum => 2, :maximum => 24 }, :presence => {:message => "has invalid length."}
  validates :zipcode, :length => { :maximum => 5 }, presence: {:message => "has invalid length."}
  validates_email_format_of :email
  validates :password_digest, :email, presence: true
  
  has_many :dogs
  has_and_belongs_to_many :parks
  has_secure_password
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ["missing1.png", "missing2.png"].sample
end


