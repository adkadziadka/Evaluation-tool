class Performance < ApplicationRecord
	belongs_to :student
	belongs_to :batch

	validates :color, presence: true
	validates :remarks, length: { maximum: 800}
end
