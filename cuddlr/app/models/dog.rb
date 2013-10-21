class Dog < ActiveRecord::Base
  validates :name, :gender, :age, :preference, presence: true
  
end
