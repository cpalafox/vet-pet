class DogsController < ApplicationController
  respond_to :html

  expose(:dogs)
  expose(:dog, attributes: :dog_params)

  def index
  end

  def new    
  end

  def create
    if dog.save
      redirect_to dogs_path
    else
      respond_with dog
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :age_unit, :weight, :weight_unit, :breed, :stage, :size)
  end

end