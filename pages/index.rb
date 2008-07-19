class Index < Shoes
  url '/', :index
  
  def index
    flow :width => 620, :margin => 10 do

      # Header
      header(:title => 'Title', :subtitle => 'subtitle')

      # Body
      stack do
        para "Photos will load here"
      end
      
      # Footer
      # See helpers/application_helper
      footer{ para "copyleft 2008", :size => 6, :stroke => gray }

    end # of flow
  end # of index
  
end