class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :telephone
      t.string :address
      t.string :marital_status
      t.integer :children
      t.string :work
      t.string :reason_header
      t.string :reason_text
      t.integer :amount

      t.timestamps
    end
  end
end
