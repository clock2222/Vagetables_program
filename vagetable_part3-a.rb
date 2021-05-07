class Product
  attr_reader :name, :price, :id
  @@count = 30

  def initialize(product_params)
    @name = product_params[:name]
    @price = product_params[:price]
    @id = @@count += 1
  end
end

