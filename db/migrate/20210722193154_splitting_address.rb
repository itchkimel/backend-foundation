class SplittingAddress < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :address_number, :integer
    add_column :requests, :address_street, :string
    add_column :requests, :address_city, :string
    add_column :requests, :address_state, :string
    add_column :requests, :address_country, :string
    add_column :requests, :address_zip, :integer
  end
end
