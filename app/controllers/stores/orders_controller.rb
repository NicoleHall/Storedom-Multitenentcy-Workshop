class Stores::OrdersController < Stores::StoresController

  def index
    @orders = current_store.orders
  end

  def show
  end

end
