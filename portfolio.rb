$:.push(File.dirname(__FILE__) + "/lib/")
$:.push(File.dirname(__FILE__) + "/models/")
$:.push(File.dirname(__FILE__) + "/pages/")
$:.push(File.dirname(__FILE__) + "/helpers/")

require 'rubygems'
require 'app_config'
require 'storage'
require 'index'
require 'application_helper'

Shoes.send :include, ApplicationHelper

class Portfolio < Shoes
  #url '/', :index
  #url '/artist', :artist
  
end

Shoes.app :title => "Jean Elie Trujillo Portfolio", :width => 640, :height => 480