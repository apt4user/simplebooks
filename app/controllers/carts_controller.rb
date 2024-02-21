class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show edit update destroy ]

  def add
    @book = Book.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    existing_cart = Cart.find_by(user_id: current_user)

    if existing_cart.blank?
      @cart = Cart.new(user: current_user) #, session_token: request.session_options[:id])
      @item = Item.new(book: @book, cart: @cart, quantity: quantity)
      success = @cart.save && @item.save
    elsif Item.find_by(book_id: params[:id]).blank?
      @cart = existing_cart
      @item = Item.new(book: @book, cart: @cart, quantity: quantity)
      success = @item.save
    else
      @item = Item.find_by(cart_id: existing_cart.id, book_id: @book.id)
      @item.book = @book
      @item.quantity = quantity
      success = @item.update(quantity: quantity)
    end

    respond_to do |format|
      if success
        format.html { redirect_to controller: "books", action: "show", id: params[:id] }
        format.json { render json: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove
    Item.find_by(id: params[:id]).destroy
    existing_cart = Cart.find_by(user_id: current_user)

    if Item.find_by(cart_id: existing_cart).blank?
      respond_to do |format|
        if existing_cart.destroy
          format.html { redirect_to controller: "books", action: "show", id: params[:id] }
          format.json { render json: @item }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end
  end
end
