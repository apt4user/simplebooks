class ApplicationController < ActionController::Base
  before_action :set_render_cart
  before_action :load_items

  def index
  end

  def load_items
    @items = Item.where(cart_id: Cart.find_by(user_id: current_user)).includes(:book)
  end

  def set_render_cart
    if Cart.find_by(user_id: current_user).nil?
      @render_cart = false
    else
      @render_cart = true
    end
  end
end
