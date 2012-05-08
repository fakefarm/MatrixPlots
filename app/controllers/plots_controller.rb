class PlotsController < ApplicationController
	def index
		@plots = Plot.all
	end
	
	def new
		@plot = Plot.new
	end
	
	def create
		@plot = Plot.new(params[:plot])
		if @plot.save
		  flash[:notice] = "added..."
		  redirect_to plots_path
	  else
	    flash[:alert] = "We have a problem."
	    render "new"
	  end
	end
	
	def show
		@plot = Plot.find(params[:id])
	end
	
	def edit
	  @plot = Plot.find(params[:id])
	end
	
	def update
		@plot = Plot.find(params[:id])
		@plot.update_attributes(params[:plot])
		redirect_to plot_path(@plot)
		
	end
	
	def destroy
	  @plot = Plot.find(params[:id])
	  @plot.destroy
	  redirect_to plots_url
	end

end