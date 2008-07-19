# View methods defined here can be used to customize your layouts
module ApplicationHelper
  
  # Page Header
  # options:
  # title:String
  # subtitle:String
  #
  def header(options={})
    @header = stack do
      background darkgray, :radius => 12
      title(options[:title], :size => 18) if options[:title]
      subtitle(options[:subtitle], :size => 12) if options[:subtitle]
    end
  end
  
  # Page Footer
  # an optional block can be passed and will be rendered in the footer
  #
  # Example: footer{ para "copyleft 2008", :size => 6, :stroke => gray }
  def footer(&block)
    @footer = stack :margin_top => 10 do
      background darkgray, :radius => 12
      para "application name: #{AppConfig.name} version: #{AppConfig.version}", :stroke => white, :size => 8
      yield if block_given?
    end
  end
  
  
end