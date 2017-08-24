class Managers::PropertiesController < ApplicationRecord

  def create
    @property = current_user.managed_properties.new(property_params)
    if @property.save
      format.html { redirect_to managers_property_path(@property), notice: 'Property was successfully created.' }
      format.json { render :show, status: :created, location: @property }
    else
      format.html { render :new }
      format.json { render json: @property.errors, status: :unprocessable_entity }
    end
  end

  ## TODO
  ## def new
  ## end

  def show
    @property = current_user.managed_properties.find(params[:id])
  end

  private

  def property_params
    params.require(:property).permit(:title)
  end

end