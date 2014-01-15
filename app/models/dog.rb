class Dog < ActiveRecord::Base
  validates :name, :gender, :breed, :age, :preference, presence: true
  belongs_to :user
  belongs_to :park
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.png"
end
