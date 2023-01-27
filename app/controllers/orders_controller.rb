class OrdersController < ApplicationController
 def index
  @orders = Order.all
 end 

 def show
    @order = Order.find(params[:id])
  end

 def new
  @order = Order.new
 end 

  def create
    @order = Order.new(order_params) 
    if @order.save
      redirect_to orders_path, alert: 'Order creation successful'
    else
      render :new, status: :unprocessable_entity
    end  
  end 

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path, status: :see_other
  end

  private

  def order_params
  	params.require(:order).permit(:sender_name, :receiver_name, :from, :to, :weight_capacity, :contact)
  end
end 