class PizzasController < ApplicationController

    def index
        @pizzas = Pizza.all
    end
    



    def new
    #check if it's nested & it's a proper id
    if params[:rating_id] && rating = Rating.find_by_id(params[:rating_id])
        #nested route
        @pizza = rating.pizzas.build #has_many
      else
        @pizza = Pizza.new
        @pizza.build_rating  #belongs_to
    end
end

    def create
        @pizza = current_user.pizzas.build(pizza_params)
        if @pizza.save
          redirect_to pizza_path(@pizza)
        else
          @pizza.build_rating unless @pizza.rating
          render :new
        end
      end

      def show
        @pizza = Pizza.find_by(id: params[:id])
        if !@pizza
          redirect_to pizzas_path
        end
      end
    


    private

    def pizza_params
      params.require(:pizza).permit(:name, :delivery_address, :delivery_notes, meat_ids: [], cheese_ids: [], drink_ids: [], topping_ids: [], rating_ids: [], rating_attributes: [:stars, :comment])
    end
end
