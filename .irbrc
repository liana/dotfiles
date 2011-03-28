require 'rubygems'
require 'ap'

begin 
  Wirble.init

  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

Hirb.enable

class Object
  # Return only the methods not present on basic objects
  def show_methods
    colputs (self.methods - Object.new.methods).sort
  end
end

def watch_active_record
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  reload!
end
