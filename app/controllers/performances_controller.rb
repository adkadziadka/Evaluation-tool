class PerformancesController < ApplicationController
	def index
	end

	def show
	end

	def create
		@batch = Batch.find(params[:batch_id])
		@student = @batch.students.find(params[:student_id])
		@performance = @student.performances.new(performance_params)
		if @performance.save
			redirect_to batch_student_path(batch_id: @batch.id, id: @student.id), notice: "Remark created succesfully!"
		else
			render "students/show"
		end
	end


	private

	def performance_params
		params.require(:performance).permit(:remarks, :date, :rate)
	end

end
