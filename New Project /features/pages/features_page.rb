class FeaturesPage

  def initialize session
     @session = session
  end

  def add_to_cart
    @session.click_link "Cart"
  end

end