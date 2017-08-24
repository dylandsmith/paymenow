class ChangeRentalFeeInUnitFinancial < ActiveRecord::Migration[5.1]
  def change
    change_column :unit_financials, :rental_fee, :decimal
  end
end
