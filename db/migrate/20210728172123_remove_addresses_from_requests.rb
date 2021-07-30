class RemoveAddressesFromRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :address_number, :integer
    remove_column :requests, :address_street, :string
    remove_column :requests, :address_city, :string
    remove_column :requests, :address_state, :string
    remove_column :requests, :address_country, :string
    remove_column :requests, :address_zip, :integer
  end
end
