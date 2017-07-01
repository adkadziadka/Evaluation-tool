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

#algorithm

	def get_student
		students = []		
		loop do
			rate = [1, 2, 3].sample
			students = Student.joins(:performances).where(batch_id: id, 'performances.rate' => rate)
			break if !students.empty?
		end		
		students.sample
	end

	

	# another:

	# def get_student
	# 	students_array = []
	# 	loop do
	# 		rate = [1, 2, 3].sample
	# 		students.each do |student|
	# 			student.performances.each do |performance|
	# 				students_array << student.performances == rate
	# 			end
	# 		end
	# 		break if !students_array.empty?
	# 	end
	# 	students_array.sample
	# end


	# best choice:

	# def get_student
	# 	students_array = []
	# 	students.each do |student|
	# 		student.performances.each do |performance|
	# 			students_array += [student] if performance.rate == 3
	# 			students_array += [student, student] if performance.rate == 2
	# 			students_array += [student, student, student] if performance.rate == 1
	# 		end
	# 	end
	# 	students_array.sample
	# end
end
	