class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addesses do |t|
      t.integer :addressable_id
      t.integer :addressable_type
      t.string :building_number
      t.string :building_name
      t.string :street_name
      t.string :floor
      t.string :province_name
      t.string  :district_name
      t.string :sub_district_name
      t.decimal :latitude, precision: 15, scale: 12
      t.decimal :longitude, precision: 15, scale: 12
      t.text :extra_info

      t.timestamps
    end

    Address.create_translation_table! building_name: :string, street_name: :string, 
    street_name: :string, province_name: :string, district_name: :string, sub_district_name: :string,
    extra_info: :text
  end
end
