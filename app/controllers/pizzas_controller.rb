class PizzasController < ApplicationController
    
  def index
    if params[:user_id]
      @pizzas = User.find(params[:user_id]).pizzas
    elsif params[:delivery_address]
      @pizzas = Pizza.search_by_address(params[:delivery_address])
    else
      @pizzas = Pizza.all
    end
  end
    
  def new
    @pizza = Pizza.new
    @pizza.build_rating
  end
    
  def create
    @pizza = current_user.pizzas.build(pizza_params)
      if @pizza.save
        redirect_to pizza_path(@pizza)
      else
        render :new
      end
  end
    
  def show
    find_pizza
  end
        
  def edit
    find_pizza
  end

  def update
    find_pizza
    if @pizza.update(pizza_params)
      redirect_to pizza_path(@pizza)
    else
      render :edit
    end
  end

  def destroy
    find_pizza
    @pizza.destroy
    redirect_to user_path(current_user)
  end

  private

  def find_pizza
    @pizza = Pizza.find_by(id: params[:id])
    if !@pizza
      redirect_to pizzas_path
    end
  end

  def pizza_params
    params.require(:pizza).permit(:name, :delivery_address, :delivery_notes, meat_ids: [], cheese_ids: [], drink_ids: [], topping_ids: [], dip_ids: [], topping_ids: [], rating_attributes: [:stars, :comment] )
  end
end