class SalesController < ApplicationController

    def index
        @sales = Sale.all
        @customers = Customer.all
        @products = Product.all
    end

    def new
        @sale = Sale.new
    end

    def create
        @sale = Sale.new(sale_params)
        @sale.save
        redirect_to static_pages_path
    end


    def update
    end
    
    

    private

    def sale_params
        params.require(:sale).permit(:retail_price, :sales_tax, customer_ids:[], product_ids:[])
    end
    
end
