class StudentsController < ApplicationController
	before_action :authenticate_teacher!

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@batch = Batch.find(params[:batch_id])
		@student = Student.new
	end

	def create
		@batch = Batch.find(params[:batch_id])
		@student = @batch.students.new(student_params)
		if @student.save
			redirect_to batch_path(@batch), notice: "Student created succesfully!"
		else
			render "new"
		end
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
		params.require(:student).permit(:picture, :full_name)
	end
end
