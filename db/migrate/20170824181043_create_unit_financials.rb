class CreateUnitFinancials < ActiveRecord::Migration[5.1]
  def change
    create_table :unit_financials do |t|
      t.float :rental_fee
      t.float :late_fee
      t.date :rental_due_date
      t.float :deposit_amount
      t.float :deposit_amount_returned

      t.timestamps
    end
  end
end
