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
			redirect_to batch_path(@batch.id), notice: "Remark created succesfully!"
		else
			render "students/show"
		end
	end


	private

	def performance_params
		params[:performance][:rate] = case params[:performance][:rate].to_s
																	when /green/  then 3
																	when /yellow/ then 2
																	when /red/    then 1
																	else
																	end
		params.require(:performance).permit(:remarks, :date, :rate)
	end

end
