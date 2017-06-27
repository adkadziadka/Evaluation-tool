class Student < ApplicationRecord
	belongs_to :teacher

	validates :picture, presence: true
	validates :full_name, presence: true
	validates :date, presence: true
end