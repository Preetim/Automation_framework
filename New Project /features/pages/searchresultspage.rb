class SearchResultsPage

  def initialize (session)
    @session = session
  end

  def select_item_from_results itemname
    @session.first('a', :text => "#{itemname}").click
  end

end