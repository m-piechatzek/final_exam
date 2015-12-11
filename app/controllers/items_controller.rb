class ItemsController < ApplicationController

  def index
    @items = Item.all
    # @bids = @items.bids
  end

  def show
  @item = Item.find params[:id]
  @bid = Bid.new


  end

  def new
    @item = Item.new
  end

  def create
   item_params = params.require(:item).permit(:title, :description, :end_date, :reserve_price)
   @item = Item.new(item_params)
   @item.user_id = session[:user_id]
   if @item.save
   redirect_to items_path, notice: "Auction Created"
  else
    render :new
  end

  end
end
