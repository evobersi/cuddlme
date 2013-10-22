class Dog < ActiveRecord::Base
  validates :name, :gender, :age, :preference, presence: true
  belongs_to :user
end
