class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end

    def show
        @customers = Customer.all
    end

    def new
        @customer = Customer.new
    end

    def edit
        @customer = Customer.find(params[:id])
    end

    def create
        @customers = Customer.new(customer_params)
        @customers.save
        redirect_to static_pages_url
    end

    def update
        @customers = Customer.find(params[:id])
        if @customers.update(customer_params)
            flash[:success] = "Updated product information"
            redirect_to static_pages_url
        else
            flash[:alert] = "Error!"
            render :edit
        end
    end

    def destroy
        @customers = Customer.find(params[:id])
        if @customers.present?
            @customers.destroy!
        end
        redirect_to customer_path
    end

    private 

    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :company, :phone_number)
    end
end
