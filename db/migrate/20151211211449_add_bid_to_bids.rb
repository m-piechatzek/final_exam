class AddBidToBids < ActiveRecord::Migration
  def change
    add_column :bids, :bid, :float
  end
end
