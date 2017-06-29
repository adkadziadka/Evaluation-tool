class Student < ApplicationRecord
	belongs_to :batch
	has_many :performances

	validates :picture, presence: true
	validates :full_name, presence: true
end
