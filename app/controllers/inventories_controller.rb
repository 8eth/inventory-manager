class InventoriesController < ApplicationController

    before_action :find_inventory, only: [:show, :update, :destroy]    

    def index
        render json: Inventory.all
    end

    def show
        render json: @inventory
    end
    
    def create
        inventory = Inventory.create!(inventory_params)
        render json: inventory, status: :created
    end

    def update
        @inventory.update!(inventory_params)
        render json: @inventory
    end

    def destroy
        @inventory.destroy
        head :no_content
    end

    private

    def find_inventory
        @inventory = Inventory.find(params[:id])
    end
    
    def inventory_params
        params.permit(:name, :price, :quantity, :warehouse)
    end

end
