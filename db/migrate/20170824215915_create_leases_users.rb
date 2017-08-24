class CreateLeasesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :leases_users do |t|
      t.references :user, foreign_key: true
      t.references :lease, foreign_key: true
    end
  end
end
