class Batch < ApplicationRecord
	has_many :performances, through: :students
	has_many :students, dependent: :destroy
end
