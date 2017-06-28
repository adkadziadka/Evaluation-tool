class Student < ApplicationRecord
	belongs_to :batch
	has_many :performance

	validates :picture, presence: true
	validates :full_name, presence: true
	validates :date
end
