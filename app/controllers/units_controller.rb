class UnitsController < ApplicationController

  def show
    @unit = Unit.find(params[:id])
    @unit_financials = @unit.unit_financial
  end

end