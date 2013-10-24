class Park < ActiveRecord::Base  
  validates :name, :borough, presence: true
  belongs_to :user

  reverse_geocoded_by :latitude, :longitude,
  :address => :address
  after_validation :reverse_geocode 
end
