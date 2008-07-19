require 'app_config'

class Storage
  
  # Create or find the location to store data
  # and return the full path
  # "Borrowed" from the Reminder Shoes app http://www.the-shoebox.org/apps/40
  def self.data_path
    
    # Windows
    if RUBY_PLATFORM =~ /win32/
      if ENV['USERPROFILE']
        if File.exist?(File.join File.expand_path(ENV['USERPROFILE']), "Application Data")
          user_data_directory = File.join File.expand_path(ENV['USERPROFILE']), "Application Data", AppConfig.name
        else
          user_data_directory = File.join File.expand_path(ENV['USERPROFILE']), AppConfig.name
        end
      else
        user_data_directory = File.join File.expand_path(Dir.getwd), "data"
      end
    
    # Not windows  
    else
      user_data_directory = File.expand_path(File.join "~", ".#{AppConfig.name}")
    end
    
    unless File.exist?(user_data_directory)
      Dir.mkdir(user_data_directory)
    end
    
    return user_data_directory
    
  end
  
end