class RemoveUserFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :user_id
  end
end
