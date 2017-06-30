class Performance < ApplicationRecord
	belongs_to :student


	validates :rate, presence: true
	# validates :date, presence: true, uniqueness: true
	validates :remarks, length: { maximum: 800}
end
