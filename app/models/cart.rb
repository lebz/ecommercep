class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :items   
  
  def initialize
    @items = []
  end
  
  def add_product(product)
    @items << product
  end
end
  

