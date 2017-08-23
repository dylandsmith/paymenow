class LoggedInHomeController < ApplicationController

  def index
    @properties = current_user.properties
  end

  def add_new_property 
    if current_user.properties.create(title: property_params[:title]).valid?
      flash[:success]='New Property Added.'
      redirect_to authenticated_root_url
    else
      flash[:error]='New Property Not Added, title required.'
      redirect_to authenticated_root_url
    end
  end

  def add_unit_to_property
    if Property.find(params[:prop_id]).units.create(address: unit_params[:address]).valid?
      flash[:success]='New Unit Added.'
      redirect_to authenticated_root_url
    else
      flash[:error]='New Unit Not Added, address required.'
      redirect_to authenticated_root_url
    end
  end

  private

  def property_params
    params.permit(:title)
  end

  def unit_params
    params.permit(:address)
  end
end
