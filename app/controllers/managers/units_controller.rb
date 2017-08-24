class Managers::UnitsController < ApplicationController
  before_action :set_property, only: [:show, :create]

  def create
    @unit = Unit.new(unit_params) 
    @unit.property = @property
    if @unit.save
      format.html { redirect_to managers_property_unit_path(@property, @unit), notice: 'Unit was successfully created.' }
      format.json { render :show, status: :created, location: @unit }
    else
      format.html { render :new }
      format.json { render json: @unit.errors, status: :unprocessable_entity }
    end
  end

  def show
    @unit = current_user.managed_units.find(params[:id])
  end

  private

  def set_property
    @property = current_user.managed_properties.find(params[:property_id])
  end

  def unit_params
    params.require(:unit).permit(:address)
  end

end