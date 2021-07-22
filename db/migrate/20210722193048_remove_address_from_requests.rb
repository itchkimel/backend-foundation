class RemoveAddressFromRequests < ActiveRecord::Migration[6.1]
  def change
    remove_column :requests, :address, :string
  end
end
