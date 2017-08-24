class AddUnitIdToUnitFinancial < ActiveRecord::Migration[5.1]
  def change
    add_column :unit_financials, :unit_id, :integer
  end
end
