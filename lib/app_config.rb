class AppConfig
  
  @@app_version = 0.1
  @@app_name = 'portfolio'
  
  def self.version
    @@app_version
  end
  
  def self.name
    @@app_name
  end
  
end