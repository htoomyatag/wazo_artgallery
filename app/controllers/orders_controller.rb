class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:index,:show]

  respond_to :html
   layout "backend"
  def index
   
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    respond_with(@order)
  end

  def edit
  end



  def create
    @order = Order.new(order_params)
    if @order.save
    OrderNotifier.send_order_email(@order).deliver
    redirect_to(request.env['HTTP_REFERER'])
    end
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:order_details, :customer_name, :contact_email, :contact_number, :contact_address, :message)
    end
end
