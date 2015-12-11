class ChangeBidInBid < ActiveRecord::Migration
  def change
    change_column :bids, :bid,  'float USING CAST(bid AS float)'

  end
end
