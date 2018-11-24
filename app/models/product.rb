class Product < ApplicationRecord

    has_many :sales
    has_many :cusotmers, :through => :sales
end
