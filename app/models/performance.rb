class Performance < ApplicationRecord
	belongs_to :student
	belongs_to :batch

	validates :color
	validates :remarks, length: { maximum: 800}
end
