class RemoveUnitFinancialIdFromUnit < ActiveRecord::Migration[5.1]
  def change
    remove_column :units, :unit_financial_id, :integer
  end
end
