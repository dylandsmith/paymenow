class AddUnitIdToLease < ActiveRecord::Migration[5.1]
  def change
    add_column :leases, :unit_id, :integer
  end
end
