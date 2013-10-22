class Dog < ActiveRecord::Base
  validates :name, :gender, :breed, :age, :preference, presence: true
  belongs_to :user
end
