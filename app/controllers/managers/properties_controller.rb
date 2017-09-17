class Managers::PropertiesController < ApplicationController

  before_action :set_property, only: [:show, :update, :destroy]

  def index
    @properties = current_user.managed_properties
  end

  def create
    @property = current_user.managed_properties.new(property_params)
    respond_to do |format|
      if @property.save
        current_user.managed_properties << @property
        format.html { redirect_to managers_properties_url, notice: 'Property was saved successfully.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to managers_property_url, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  ## TODO
  ## def new
  ## end

  def show
    
  end

  def destroy
    title = @property.title
    @property.destroy
    respond_to do |format|
      format.html { redirect_to managers_properties_url, notice: "#{title} was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private

  def set_property
    @property = current_user.managed_properties.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:title)
  end

end