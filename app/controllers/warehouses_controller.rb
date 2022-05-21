class WarehousesController < ApplicationController
    before_action :find_warehouse, only: [:show, :update, :destroy]    

    def index
        render json: Warehouse.all
    end

    def show
        render json: @warehouse
    end
    
    def create
        warehouse = Warehouse.create!(warehouse_params)
        render json: warehouse, status: :created
    end

    def update
        @warehouse.update!(warehouse_params)
        render json: @warehouse
    end

    def destroy
        @warehouse.destroy
        head :no_content
    end

    private

    def find_warehouse
        @warehouse = Warehouse.find(params[:id])
    end
    
    def warehouse_params
        params.permit(:name, :address)
    end

end
