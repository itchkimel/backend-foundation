class RenameColumnFromRequest < ActiveRecord::Migration[6.1]
  def change
    rename_column :requests, :reason_text, :reason_body
  end
end
