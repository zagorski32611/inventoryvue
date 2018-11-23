class StaticPagesController < ApplicationController

    def index
        @products = Product.all
        @customers = Customer.all
        @customer = Customer.new
    end


end
