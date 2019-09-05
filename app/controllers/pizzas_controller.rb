class PizzasController < ApplicationController
    
        def index
          if params[:user_id]
            @pizzas = User.find(params[:user_id]).pizzas
          elsif  params[:delivery_address]
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

         #   binding.pry
            if @pizza.save
              redirect_to pizza_path(@pizza)
            else
              render :new
            end
          end
    



          def show
            @pizza = Pizza.find_by(id: params[:id])
            if !@pizza
              redirect_to pizzas_path
            end
          end
        
  def edit
    @pizza = Pizza.find_by(id: params[:id])
    if !@pizza
      redirect_to pizzas_path
    end  
  end

  def update
    @pizza = Pizza.find_by(id: params[:id])
    if !@pizza
      redirect_to pizzas_path
    end
        if @pizza.update(pizza_params)
      redirect_to pizza_path(@pizza)
    else
      render :edit
    end
  end



  def destroy
     @pizza = Pizza.find_by(id: params[:id])
    if !@pizza
      redirect_to pizzas_path
    end
    @pizza.destroy
    redirect_to pizzas_path
  end


        private

          def pizza_params
            params.require(:pizza).permit(:name, :delivery_address, :delivery_notes, meat_ids: [], cheese_ids: [], drink_ids: [], topping_ids: [], dip_ids: [], topping_ids: [], rating_attributes: [:stars, :comment] )
          end
      end