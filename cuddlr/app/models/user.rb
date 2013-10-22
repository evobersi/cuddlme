class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  # validates :balance, numericality: { greater_than_or_equal_to: 0 }
  has_many :dogs

  has_secure_password

  # def purchase(song)
  #   if afford?(song) && pay_for(song)
  #     self.songs << song
  #   end
  # end

  # def afford?(song)
  #   balance >= song.price
  # end

  # def pay_for(song)
  #   self.balance -= song.price
  #   self.save
  # end
end