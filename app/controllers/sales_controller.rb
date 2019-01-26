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
        if @sale.save
            flash[:success] = "Sold!"
        else
            render 'static_pages/index'
        end
    end

    def destroy
    end


    def update
    end
        

    private

    def sale_params
        params.require(:sale).permit(:price, :sales_tax, :customers_id, :product_id)
    end
    
end
