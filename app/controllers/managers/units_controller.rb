class Managers::UnitsController < ApplicationController

  before_action :set_property, only: [:index, :create, :update]
  before_action :set_unit, only: [:show, :update, :destroy]

  def index
    @units = current_user.managed_properties.find(params[:property_id]).units
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.property_id = @property.id
    respond_to do |format|
      if @unit.save
        format.html { redirect_to managers_property_units_url, notice: "#{@unit.address} was successfully added to #{@property.title}." }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    
  end

  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to managers_property_unit_url(@property, @unit), notice: "#{@unit.address} was successfully updated." }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    address = @unit.address
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to managers_property_units_url, notice: "#{address} was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private

  def set_unit
    @unit = current_user.managed_units.find(params[:id])
  end

  def set_property
    @property = current_user.managed_properties.find(params[:property_id])
  end

  def unit_params
    params.require(:unit).permit(:address)
  end

end