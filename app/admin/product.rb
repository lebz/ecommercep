ActiveAdmin.register Product do

index do
    column :category
    column :title
    column :description
	column :image_url
    column :price do |product|
      number_to_currency product.price, :unit => "R"
    end
	default_actions
  end
 
 # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end
  
   # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

end
