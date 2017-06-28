class StudentsController < ApplicationController
	before_action :set_student, only [:show, :edit, :update]
	before_action :authenticate_teacher!

	def index
		@students = current_teacher.students
	end

	def show
	end

	def new
		@student - current_teacher.students.build
	end

	def update
		if @student.update(student_params)
			redirect_to @student, notice: "Student updated"
		else
			render :edit
		end
	end

	private

	def student_params
		params
			.require(:student)
			.permit(
					:picture, :full_name, :day
				)
	end
end
