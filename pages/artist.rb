class Artist < Shoes
  
  def artist
    flow :width => 620, :margin => 10 do

      # Header
      stack do
        background tan, :radius => 12
        title "Jean Elie Trujillo", :size => 18
        subtitle "#{Time.now.to_s}", :size => 12
      end

      # Body
      stack :height => '100%' do
        para "content"
      end

    end # of canvas
  end # of index
  
end