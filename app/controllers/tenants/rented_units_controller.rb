class Tenants::RentedUnitsController < ApplicationController

  #get all rented units for the logged in tenant
  def index
    @rented_units = current_user.rented_units
  end

end