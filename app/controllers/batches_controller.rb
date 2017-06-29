class BatchesController < ApplicationController
	def index
		@batches = Batch.all
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

	private

	def batch_params
		params.require(:batch).permit(:number, :start_date, :end_date)
	end


end
