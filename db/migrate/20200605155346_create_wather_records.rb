class CreateWatherRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :wather_records do |t|
      t.integer :city_code
      t.string :city_name
      t.string :status
      t.string :description
      t.decimal :temp

      t.timestamps
    end
  end
end
