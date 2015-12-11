class BidsController < ApplicationController

  def create
    bid_params    = params.require(:bid).permit(:bid)
    @item = Item.find params[:item_id]

    @bid = Bid.new(bid_params)
    @bid.item = @item
    @bid.user_id = session[:user_id]
    # if @bid.bid > @item.reserve_price
    #   new_price = @bid.bid
    #   @item.reserve_price = new_price
      if @bid.save
        redirect_to item_path(@item), notice: "Bid created successfully!"
      else
        render "items/show"
      end

      # end
    # end
  end
end
