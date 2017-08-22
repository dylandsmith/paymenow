class CreatePropertiesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :properties_users do |t|
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true
    end
  end
end
