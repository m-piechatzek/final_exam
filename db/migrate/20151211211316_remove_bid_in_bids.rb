class RemoveBidInBids < ActiveRecord::Migration
  def change
    remove_column :bids, :bid
  end
end
