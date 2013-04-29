class HomePage

  def visit
    @session.visit "http://www.ebay.in/"
  end

  def initialize (session)
    @session = session
  end

  def search item
    @session.fill_in("gh-ac", :with=>item)
    @session.click_button "gh-btn"
  end

end