class PuppiesController < ApplicationController

  def index
  	@puppies = Puppy.all
  	render :index
  end

  def new
  	@puppy = Puppy.new
  end

  def create
  	@puppy = Puppy.new(puppy_params)
  	if @puppy.save
  		redirect_to puppies_path, flash: {success: "Puppy Added"}
  	else
  		render :new
  	end
  end

  def show
  	@puppy = Puppy.find_by_id params[:id]
  end

  def edit
  	@puppy = Puppy.find_by_id params[:id]
  end

  def update
  	@puppy = Puppy.find_by_id params[:id]
  	if @puppy.update puppy_params
  		redirect_to puppy_path(@puppy), notice: "Successfully Updated Puppy Info"
  	else
  		render :edit
  	end
  end

  def destroy
  	puppy = Puppy.find_by_id params[:id]
  	if puppy.destroy
  		redirect_to puppies_path, alert: "Successfully Removed Puppy Info"
  	else
  		render :show
  	end
  end

  private
  	def puppy_params
  		params.require(:puppy).permit(:name, :age, :breed, :bio, :image)
  	end
end
