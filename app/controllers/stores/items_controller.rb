class Stores::ItemsController < Stores::StoresController

  # before_action :current_store, only: [:index, :show]
  def index
    @items = current_store.items
  end

  def show
    @item = current_store.items.find_by(id: params[:id])

    redirect_to store_items_path(store: store.url) if @item.nil?
  end

  # private
  #
  # def current_store
  #   @current_store ||= Store.find_by(url: params[:store])
  # end
end
