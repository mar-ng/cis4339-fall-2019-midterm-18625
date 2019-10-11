class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.string :last_name
      t.string :first_name
      t.string :region
      t.string :notes
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
