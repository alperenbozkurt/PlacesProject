class Place < ApplicationRecord
	 validates :name, presence: true
	 validates :city, inclusion: { in: %w(Ankara İstanbul Tosya),
    message: "%{value} olamaz, Sadece büyükşehirlerde mağzamız bulunabilir.." }
		has_many :comments
		belongs_to :category
end
