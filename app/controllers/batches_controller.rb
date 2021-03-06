class BatchesController < ApplicationController
	def index
		@batches = Batch.search(params[:search])
		if @batches.empty?
			flash.now[:alert] = "No results or incorect start date. Try again."
		end
	end

	def show
		@batch = Batch.find(params[:id])
	end

	def new
		@batch = Batch.new
	end

	def create
		@batch = Batch.new(batch_params)
		if @batch.save
			redirect_to batches_path, notice: "Batch created succesfully!"
		else
			render "new"
		end
	end

	def destroy
		@batch = Batch.find(params[:id])
		
		@batch.destroy
		redirect_to batches_path, notice: "Batch is gone"
	end

	def ask
		@batch = Batch.find(params[:batch_id])
		student = @batch.get_student
		flash[:alert] = "Ask a question to #{student.full_name}"
		redirect_to batch_path(@batch)
	end

	private

	def batch_params
		params.require(:batch).permit(:number, :start_date, :end_date)
	end


end
