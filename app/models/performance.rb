class Performance < ApplicationRecord
	belongs_to :student


	validates :rate, presence: true
	validates :remarks, length: { maximum: 800}
end
