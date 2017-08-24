class LoggedInHomeController < ApplicationController

  def index
    # @properties = current_user.managed_properties.include(:units)
    # @rented_units = current_user.rented_units
  end

  # def add_new_property 
  #   if current_user.managed_properties.create(title: property_params[:title]).valid?
  #     flash[:success]='New Property Added.'
  #     redirect_to authenticated_root_url
  #   else
  #     flash[:error]='New Property Not Added, title required.'
  #     redirect_to authenticated_root_url
  #   end
  # end

  # def add_unit_to_property
  #   if Property.find(params[:prop_id]).units.create(address: unit_params[:address]).valid?
  #     flash[:success]='New Unit Added.'
  #     redirect_to authenticated_root_url
  #   else
  #     flash[:error]='New Unit Not Added, address required.'
  #     redirect_to authenticated_root_url
  #   end
  # end

  # def show_unit
  #   @unit = Unit.find(params[:id])
  #   @unit_financials = @unit.unit_financial
  #   render '_unit_view'
  # end

  private


end
