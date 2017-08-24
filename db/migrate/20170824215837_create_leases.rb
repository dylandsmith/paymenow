class CreateLeases < ActiveRecord::Migration[5.1]
  def change
    create_table :leases do |t|
      t.decimal :credit
      t.decimal :debt

      t.timestamps
    end
  end
end
