ActiveAdmin::dashboard.build do
  section "Category" do
    table_for Product.order('category').limit(5) do
      column :title do |product|
        link_to product.title, admin_product_path(product)
      end
      column :price
    end
    strong { link_to "View All Products", admin_products_path }
  end
end
