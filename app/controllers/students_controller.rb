class StudentsController < ApplicationController
	before_action :authenticate_teacher!

	def index
		@students = Student.all
	end

	def show
		@batch = Batch.find(params[:batch_id])
		@student = @batch.students.find(params[:id])
		@performance = @student.performances.new
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

	def edit
		@batch = Batch.find(params[:batch_id])
		@student = @batch.students.find(params[:id])
  end

  def update
    @batch = Batch.find(params[:batch_id])
		@student = @batch.students.find(params[:id])

    if @student.update_attributes(student_params)
      redirect_to batch_student_path(batch_id: @batch.id, id: @student.id), notice: "Student updated!"
    else
      render 'edit'
    end
  end

	private

	def student_params
		params.require(:student).permit(:picture, :full_name)
	end
end
