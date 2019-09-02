class MeatsController < ApplicationController
    def index
        @meats = Meat.all
    end
end
