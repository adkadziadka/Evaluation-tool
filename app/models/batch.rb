class Batch < ApplicationRecord
	has_many :performances, through: :students
	has_many :students, dependent: :destroy

	validates :number, presence: true

	def percentages
		rates = []
		students.each do |student|
			student.performances.each do |performance|
				rates << performance.rate
			end
		end
		{
			green: (rates.count(3) * 100) / rates.size ,
			yellow: (rates.count(2) * 100) / rates.size,
			red: (rates.count(1) * 100) / rates.size
		}
	end

	def get_student
		students_array = []
		students.each do |student|
			student.performances.each do |performance|
				students_array += [student] if performance.rate == 3
				students_array += [student, student] if performance.rate == 2
				students_array += [student, student, student] if performance.rate == 1
			end
		end
		students.sample
	end
end
	