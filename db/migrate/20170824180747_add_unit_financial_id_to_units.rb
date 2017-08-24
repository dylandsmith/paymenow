class AddUnitFinancialIdToUnits < ActiveRecord::Migration[5.1]
  def change
    add_column :units, :unit_financial_id, :integer
  end
end
