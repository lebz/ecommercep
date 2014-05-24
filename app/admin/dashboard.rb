ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
  
   
    
  section "Books In Store" do
  div :class => "blank_slate_container"
    table_for Product.order('price').limit(5) do
      column :title do |product|
        link_to product.title, admin_product_path(product)
      end
      column :price
	  column :image_url
    end
	
	
    strong { link_to "View All Products", admin_products_path }
  end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
