class Park < ActiveRecord::Base  
  validates :name, :borough, presence: true
  has_and_belongs_to_many :users
  has_many :dogs
  
  reverse_geocoded_by :latitude, :longitude,
  :address => :address
  after_validation :reverse_geocode 
end
